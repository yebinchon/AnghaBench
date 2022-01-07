; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_end_write_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_end_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.r10bio*, i32 }
%struct.r10bio = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_5__ = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@R10BIO_Uptodate = common dso_local global i32 0, align 4
@IO_MADE_GOOD = common dso_local global i8* null, align 8
@R10BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @raid10_end_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_end_write_request(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r10conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.md_rdev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @BIO_UPTODATE, align 4
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load %struct.r10bio*, %struct.r10bio** %20, align 8
  store %struct.r10bio* %21, %struct.r10bio** %6, align 8
  store i32 1, i32* %8, align 4
  %22 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %23 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.r10conf*, %struct.r10conf** %25, align 8
  store %struct.r10conf* %26, %struct.r10conf** %9, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %12, align 8
  %27 = load %struct.r10conf*, %struct.r10conf** %9, align 8
  %28 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = call i32 @find_bio_disk(%struct.r10conf* %27, %struct.r10bio* %28, %struct.bio* %29, i32* %10, i32* %11)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.r10conf*, %struct.r10conf** %9, align 8
  %35 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.md_rdev*, %struct.md_rdev** %40, align 8
  store %struct.md_rdev* %41, %struct.md_rdev** %12, align 8
  br label %42

42:                                               ; preds = %33, %2
  %43 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %44 = icmp ne %struct.md_rdev* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = call i32 (...) @smp_rmb()
  store i32 0, i32* %11, align 4
  %47 = load %struct.r10conf*, %struct.r10conf** %9, align 8
  %48 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.md_rdev*, %struct.md_rdev** %53, align 8
  store %struct.md_rdev* %54, %struct.md_rdev** %12, align 8
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %66 = call i32 @md_error(%struct.TYPE_8__* %64, %struct.md_rdev* %65)
  br label %89

67:                                               ; preds = %58
  %68 = load i32, i32* @WriteErrorSeen, align 4
  %69 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %70 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %69, i32 0, i32 0
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load i32, i32* @WantReplacement, align 4
  %73 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 0
  %75 = call i32 @test_and_set_bit(i32 %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %79 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %78, i32* %82)
  br label %84

84:                                               ; preds = %77, %67
  %85 = load i32, i32* @R10BIO_WriteError, align 4
  %86 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %87 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %84, %61
  br label %151

90:                                               ; preds = %55
  %91 = load i32, i32* @In_sync, align 4
  %92 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %93 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %92, i32 0, i32 0
  %94 = call i32 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32, i32* @Faulty, align 4
  %98 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %99 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %98, i32 0, i32 0
  %100 = call i32 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @R10BIO_Uptodate, align 4
  %104 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %105 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %102, %96, %90
  %108 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %109 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %110 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %118 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @is_badblock(%struct.md_rdev* %108, i32 %116, i32 %119, i32* %13, i32* %14)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %107
  %123 = load %struct.bio*, %struct.bio** %3, align 8
  %124 = call i32 @bio_put(%struct.bio* %123)
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load i8*, i8** @IO_MADE_GOOD, align 8
  %129 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %130 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i8* %128, i8** %135, align 8
  br label %145

136:                                              ; preds = %122
  %137 = load i8*, i8** @IO_MADE_GOOD, align 8
  %138 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %139 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %138, i32 0, i32 1
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i8* %137, i8** %144, align 8
  br label %145

145:                                              ; preds = %136, %127
  store i32 0, i32* %8, align 4
  %146 = load i32, i32* @R10BIO_MadeGood, align 4
  %147 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %148 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %147, i32 0, i32 0
  %149 = call i32 @set_bit(i32 %146, i32* %148)
  br label %150

150:                                              ; preds = %145, %107
  br label %151

151:                                              ; preds = %150, %89
  %152 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %153 = call i32 @one_write_done(%struct.r10bio* %152)
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %158 = load %struct.r10conf*, %struct.r10conf** %9, align 8
  %159 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @rdev_dec_pending(%struct.md_rdev* %157, i32 %160)
  br label %162

162:                                              ; preds = %156, %151
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @md_error(%struct.TYPE_8__*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @one_write_done(%struct.r10bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
