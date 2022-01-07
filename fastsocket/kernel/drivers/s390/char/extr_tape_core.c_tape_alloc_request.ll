; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_alloc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { i32*, %struct.tape_request* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tape_alloc_request(%d, %d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cqra nomem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"New request %p(%p/%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tape_request* @tape_alloc_request(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tape_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %13, %15
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ true, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @DBF_LH(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 16, i32 %24)
  %26 = bitcast i8* %25 to %struct.tape_request*
  store %struct.tape_request* %26, %struct.tape_request** %6, align 8
  %27 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %28 = icmp eq %struct.tape_request* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = call i32 @DBF_EXCEPTION(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.tape_request* @ERR_PTR(i32 %32)
  store %struct.tape_request* %33, %struct.tape_request** %3, align 8
  br label %95

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = load i32, i32* @GFP_DMA, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.tape_request* @kcalloc(i32 %38, i32 4, i32 %41)
  %43 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %44 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %43, i32 0, i32 1
  store %struct.tape_request* %42, %struct.tape_request** %44, align 8
  %45 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %46 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %45, i32 0, i32 1
  %47 = load %struct.tape_request*, %struct.tape_request** %46, align 8
  %48 = icmp eq %struct.tape_request* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = call i32 @DBF_EXCEPTION(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %52 = call i32 @kfree(%struct.tape_request* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.tape_request* @ERR_PTR(i32 %54)
  store %struct.tape_request* %55, %struct.tape_request** %3, align 8
  br label %95

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32, i32* @GFP_DMA, align 4
  %64 = or i32 %62, %63
  %65 = call i8* @kzalloc(i32 %61, i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %68 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %70 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %60
  %74 = call i32 @DBF_EXCEPTION(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %76 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %75, i32 0, i32 1
  %77 = load %struct.tape_request*, %struct.tape_request** %76, align 8
  %78 = call i32 @kfree(%struct.tape_request* %77)
  %79 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %80 = call i32 @kfree(%struct.tape_request* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.tape_request* @ERR_PTR(i32 %82)
  store %struct.tape_request* %83, %struct.tape_request** %3, align 8
  br label %95

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %57
  %86 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %87 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %88 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %87, i32 0, i32 1
  %89 = load %struct.tape_request*, %struct.tape_request** %88, align 8
  %90 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %91 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 (i32, i8*, ...) @DBF_LH(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.tape_request* %86, %struct.tape_request* %89, i32* %92)
  %94 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  store %struct.tape_request* %94, %struct.tape_request** %3, align 8
  br label %95

95:                                               ; preds = %85, %73, %49, %29
  %96 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  ret %struct.tape_request* %96
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DBF_LH(i32, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @DBF_EXCEPTION(i32, i8*) #1

declare dso_local %struct.tape_request* @ERR_PTR(i32) #1

declare dso_local %struct.tape_request* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
