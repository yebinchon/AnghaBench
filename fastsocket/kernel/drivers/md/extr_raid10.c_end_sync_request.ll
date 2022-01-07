; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_sync_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, i32*, i32, i32, %struct.mddev* }
%struct.mddev = type { i32 }

@R10BIO_MadeGood = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10bio*)* @end_sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_request(%struct.r10bio* %0) #0 {
  %2 = alloca %struct.r10bio*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r10bio*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %2, align 8
  %6 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %7 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %6, i32 0, i32 4
  %8 = load %struct.mddev*, %struct.mddev** %7, align 8
  store %struct.mddev* %8, %struct.mddev** %3, align 8
  br label %9

9:                                                ; preds = %68, %1
  %10 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %11 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %10, i32 0, i32 3
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %9
  %15 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %16 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %21 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @R10BIO_MadeGood, align 4
  %24 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %25 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @R10BIO_WriteError, align 4
  %30 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %31 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %19
  %35 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %36 = call i32 @reschedule_retry(%struct.r10bio* %35)
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %39 = call i32 @put_buf(%struct.r10bio* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.mddev*, %struct.mddev** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @md_done_sync(%struct.mddev* %41, i32 %42, i32 1)
  br label %69

44:                                               ; preds = %14
  %45 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %46 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to %struct.r10bio*
  store %struct.r10bio* %48, %struct.r10bio** %5, align 8
  %49 = load i32, i32* @R10BIO_MadeGood, align 4
  %50 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %51 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @R10BIO_WriteError, align 4
  %56 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %57 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %44
  %61 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %62 = call i32 @reschedule_retry(%struct.r10bio* %61)
  br label %66

63:                                               ; preds = %54
  %64 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %65 = call i32 @put_buf(%struct.r10bio* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  store %struct.r10bio* %67, %struct.r10bio** %2, align 8
  br label %68

68:                                               ; preds = %66
  br label %9

69:                                               ; preds = %40, %9
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r10bio*) #1

declare dso_local i32 @put_buf(%struct.r10bio*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
