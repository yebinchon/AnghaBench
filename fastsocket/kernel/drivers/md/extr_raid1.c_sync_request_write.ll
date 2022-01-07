; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_sync_request_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_sync_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.r1bio = type { i64, i32, i32, i32, %struct.bio** }
%struct.bio = type { i32*, i32 }

@R1BIO_Uptodate = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i32* null, align 8
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@end_sync_write = common dso_local global i32* null, align 8
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r1bio*)* @sync_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_request_write(%struct.mddev* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load %struct.r1conf*, %struct.r1conf** %12, align 8
  store %struct.r1conf* %13, %struct.r1conf** %5, align 8
  %14 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %15 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %19 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %18, i32 0, i32 4
  %20 = load %struct.bio**, %struct.bio*** %19, align 8
  %21 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %22 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.bio*, %struct.bio** %20, i64 %23
  %25 = load %struct.bio*, %struct.bio** %24, align 8
  store %struct.bio* %25, %struct.bio** %8, align 8
  %26 = load i32, i32* @R1BIO_Uptodate, align 4
  %27 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %28 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %33 = call i32 @fix_sync_read_error(%struct.r1bio* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %147

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %39 = load %struct.mddev*, %struct.mddev** %3, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %45 = call i64 @process_checks(%struct.r1bio* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %147

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %51 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %50, i32 0, i32 3
  %52 = call i32 @atomic_set(i32* %51, i32 1)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %114, %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %53
  %58 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %59 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %58, i32 0, i32 4
  %60 = load %struct.bio**, %struct.bio*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bio*, %struct.bio** %60, i64 %62
  %64 = load %struct.bio*, %struct.bio** %63, align 8
  store %struct.bio* %64, %struct.bio** %9, align 8
  %65 = load %struct.bio*, %struct.bio** %9, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %57
  %70 = load %struct.bio*, %struct.bio** %9, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** @end_sync_read, align 8
  %74 = icmp eq i32* %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %79 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %84 = load %struct.mddev*, %struct.mddev** %3, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 0
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82, %75, %57
  br label %114

89:                                               ; preds = %82, %69
  %90 = load i32, i32* @WRITE, align 4
  %91 = load %struct.bio*, %struct.bio** %9, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** @end_sync_write, align 8
  %94 = load %struct.bio*, %struct.bio** %9, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %97 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %96, i32 0, i32 3
  %98 = call i32 @atomic_inc(i32* %97)
  %99 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %100 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bio*, %struct.bio** %9, align 8
  %110 = call i32 @bio_sectors(%struct.bio* %109)
  %111 = call i32 @md_sync_acct(i32 %108, i32 %110)
  %112 = load %struct.bio*, %struct.bio** %9, align 8
  %113 = call i32 @generic_make_request(%struct.bio* %112)
  br label %114

114:                                              ; preds = %89, %88
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %53

117:                                              ; preds = %53
  %118 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %119 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %118, i32 0, i32 3
  %120 = call i64 @atomic_dec_and_test(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %117
  %123 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %124 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* @R1BIO_MadeGood, align 4
  %127 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %128 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %127, i32 0, i32 2
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @R1BIO_WriteError, align 4
  %133 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %134 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %133, i32 0, i32 2
  %135 = call i64 @test_bit(i32 %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131, %122
  %138 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %139 = call i32 @reschedule_retry(%struct.r1bio* %138)
  br label %146

140:                                              ; preds = %131
  %141 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %142 = call i32 @put_buf(%struct.r1bio* %141)
  %143 = load %struct.mddev*, %struct.mddev** %3, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @md_done_sync(%struct.mddev* %143, i32 %144, i32 1)
  br label %146

146:                                              ; preds = %140, %137
  br label %147

147:                                              ; preds = %35, %47, %146, %117
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fix_sync_read_error(%struct.r1bio*) #1

declare dso_local i64 @process_checks(%struct.r1bio*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

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
