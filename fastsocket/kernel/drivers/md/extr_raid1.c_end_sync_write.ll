; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_end_sync_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_end_sync_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.r1bio*, i32 }
%struct.r1bio = type { i64, i64, i32, i32, i64, %struct.mddev* }
%struct.mddev = type { i32, i32, %struct.r1conf* }
%struct.r1conf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_sync_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_write(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r1bio*, align 8
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.r1conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* @BIO_UPTODATE, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load %struct.r1bio*, %struct.r1bio** %21, align 8
  store %struct.r1bio* %22, %struct.r1bio** %6, align 8
  %23 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %24 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %23, i32 0, i32 5
  %25 = load %struct.mddev*, %struct.mddev** %24, align 8
  store %struct.mddev* %25, %struct.mddev** %7, align 8
  %26 = load %struct.mddev*, %struct.mddev** %7, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 2
  %28 = load %struct.r1conf*, %struct.r1conf** %27, align 8
  store %struct.r1conf* %28, %struct.r1conf** %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %30 = load %struct.bio*, %struct.bio** %3, align 8
  %31 = call i32 @find_bio_disk(%struct.r1bio* %29, %struct.bio* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %90, label %34

34:                                               ; preds = %2
  store i64 0, i64* %12, align 8
  %35 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %36 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %39 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %53, %34
  %42 = load %struct.mddev*, %struct.mddev** %7, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @bitmap_end_sync(i32 %44, i64 %45, i64* %12, i32 1)
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %41
  %54 = load i64, i64* %14, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %41, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @WriteErrorSeen, align 4
  %58 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %59 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @set_bit(i32 %57, i32* %66)
  %68 = load i32, i32* @WantReplacement, align 4
  %69 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %70 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @test_and_set_bit(i32 %68, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %56
  %81 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %82 = load %struct.mddev*, %struct.mddev** %7, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80, %56
  %86 = load i32, i32* @R1BIO_WriteError, align 4
  %87 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %88 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %87, i32 0, i32 2
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  br label %131

90:                                               ; preds = %2
  %91 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %92 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %100 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %103 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @is_badblock(%struct.TYPE_4__* %98, i64 %101, i64 %104, i64* %10, i32* %11)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %90
  %108 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %109 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %112 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %118 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %121 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @is_badblock(%struct.TYPE_4__* %116, i64 %119, i64 %122, i64* %10, i32* %11)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %107
  %126 = load i32, i32* @R1BIO_MadeGood, align 4
  %127 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %128 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %127, i32 0, i32 2
  %129 = call i32 @set_bit(i32 %126, i32* %128)
  br label %130

130:                                              ; preds = %125, %107, %90
  br label %131

131:                                              ; preds = %130, %85
  %132 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %133 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %132, i32 0, i32 3
  %134 = call i64 @atomic_dec_and_test(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %131
  %137 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %138 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* @R1BIO_MadeGood, align 4
  %142 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %143 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %142, i32 0, i32 2
  %144 = call i32 @test_bit(i32 %141, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %136
  %147 = load i32, i32* @R1BIO_WriteError, align 4
  %148 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %149 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %148, i32 0, i32 2
  %150 = call i32 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146, %136
  %153 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %154 = call i32 @reschedule_retry(%struct.r1bio* %153)
  br label %162

155:                                              ; preds = %146
  %156 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %157 = call i32 @put_buf(%struct.r1bio* %156)
  %158 = load %struct.mddev*, %struct.mddev** %7, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @md_done_sync(%struct.mddev* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %155, %152
  br label %163

163:                                              ; preds = %162, %131
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @find_bio_disk(%struct.r1bio*, %struct.bio*) #1

declare dso_local i32 @bitmap_end_sync(i32, i64, i64*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.TYPE_4__*, i64, i64, i64*, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r1bio*) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
