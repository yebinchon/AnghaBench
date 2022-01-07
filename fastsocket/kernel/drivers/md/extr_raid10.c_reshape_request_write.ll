; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_reshape_request_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_reshape_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, i32 }
%struct.r10bio = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.bio*, %struct.bio* }
%struct.bio = type { i32*, i32 }

@R10BIO_Uptodate = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10bio*)* @reshape_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reshape_request_write(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 0
  %12 = load %struct.r10conf*, %struct.r10conf** %11, align 8
  store %struct.r10conf* %12, %struct.r10conf** %5, align 8
  %13 = load i32, i32* @R10BIO_Uptodate, align 4
  %14 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %15 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %21 = call i64 @handle_reshape_read_error(%struct.mddev* %19, %struct.r10bio* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %26 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @md_done_sync(%struct.mddev* %24, i32 %27, i32 0)
  br label %124

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %32 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %31, i32 0, i32 0
  %33 = call i32 @atomic_set(i32* %32, i32 1)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %118, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %37 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %34
  %42 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %43 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %41
  %55 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %56 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.md_rdev*, %struct.md_rdev** %61, align 8
  store %struct.md_rdev* %62, %struct.md_rdev** %9, align 8
  %63 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %64 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.bio*, %struct.bio** %70, align 8
  store %struct.bio* %71, %struct.bio** %7, align 8
  br label %90

72:                                               ; preds = %41
  %73 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %74 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.md_rdev*, %struct.md_rdev** %79, align 8
  store %struct.md_rdev* %80, %struct.md_rdev** %9, align 8
  %81 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %82 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.bio*, %struct.bio** %88, align 8
  store %struct.bio* %89, %struct.bio** %7, align 8
  br label %90

90:                                               ; preds = %72, %54
  %91 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %92 = icmp ne %struct.md_rdev* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @Faulty, align 4
  %95 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %96 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %95, i32 0, i32 1
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %90
  br label %118

100:                                              ; preds = %93
  %101 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 0
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.bio*, %struct.bio** %7, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %108 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @md_sync_acct(i32 %106, i32 %109)
  %111 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %112 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %111, i32 0, i32 0
  %113 = call i32 @atomic_inc(i32* %112)
  %114 = load %struct.bio*, %struct.bio** %7, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.bio*, %struct.bio** %7, align 8
  %117 = call i32 @generic_make_request(%struct.bio* %116)
  br label %118

118:                                              ; preds = %100, %99
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %34

121:                                              ; preds = %34
  %122 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %123 = call i32 @end_reshape_request(%struct.r10bio* %122)
  br label %124

124:                                              ; preds = %121, %23
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @handle_reshape_read_error(%struct.mddev*, %struct.r10bio*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @end_reshape_request(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
