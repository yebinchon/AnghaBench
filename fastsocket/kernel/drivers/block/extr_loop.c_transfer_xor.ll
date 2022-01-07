; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_transfer_xor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_transfer_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i8*, i32 }
%struct.page = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@KM_USER1 = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, %struct.page*, i32, %struct.page*, i32, i32, i32)* @transfer_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_xor(%struct.loop_device* %0, i32 %1, %struct.page* %2, i32 %3, %struct.page* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.loop_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.page* %2, %struct.page** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.page* %4, %struct.page** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.page*, %struct.page** %11, align 8
  %25 = load i32, i32* @KM_USER0, align 4
  %26 = call i8* @kmap_atomic(%struct.page* %24, i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %17, align 8
  %30 = load %struct.page*, %struct.page** %13, align 8
  %31 = load i32, i32* @KM_USER1, align 4
  %32 = call i8* @kmap_atomic(%struct.page* %30, i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %18, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @READ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %8
  %40 = load i8*, i8** %17, align 8
  store i8* %40, i8** %19, align 8
  %41 = load i8*, i8** %18, align 8
  store i8* %41, i8** %20, align 8
  br label %45

42:                                               ; preds = %8
  %43 = load i8*, i8** %18, align 8
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %17, align 8
  store i8* %44, i8** %20, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.loop_device*, %struct.loop_device** %9, align 8
  %47 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %21, align 8
  %49 = load %struct.loop_device*, %struct.loop_device** %9, align 8
  %50 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %74, %45
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i8*, i8** %19, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %19, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8*, i8** %21, align 8
  %62 = load i32, i32* %22, align 4
  %63 = and i32 %62, 511
  %64 = load i32, i32* %23, align 4
  %65 = srem i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = xor i32 %60, %69
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %20, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %20, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %22, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %22, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* @KM_USER1, align 4
  %80 = call i32 @kunmap_atomic(i8* %78, i32 %79)
  %81 = load i8*, i8** %17, align 8
  %82 = load i32, i32* @KM_USER0, align 4
  %83 = call i32 @kunmap_atomic(i8* %81, i32 %82)
  %84 = call i32 (...) @cond_resched()
  ret i32 0
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
