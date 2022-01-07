; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_queue_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }
%struct.clx2_queue = type { i32, i32, i32, i32, i8*, i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, %struct.clx2_queue*, i32, i8*, i8*, i8*, i8*)* @ipw_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_queue_init(%struct.ipw_priv* %0, %struct.clx2_queue* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.ipw_priv*, align 8
  %9 = alloca %struct.clx2_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %8, align 8
  store %struct.clx2_queue* %1, %struct.clx2_queue** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %17 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %19 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 4
  %22 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %23 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %25 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %30 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %29, i32 0, i32 1
  store i32 4, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %7
  %32 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %33 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 8
  %36 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %37 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %39 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %44 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %43, i32 0, i32 2
  store i32 2, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %47 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %49 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %52 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %55 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %59 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ipw_write32(%struct.ipw_priv* %56, i8* %57, i32 %60)
  %62 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ipw_write32(%struct.ipw_priv* %62, i8* %63, i32 %64)
  %66 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @ipw_write32(%struct.ipw_priv* %66, i8* %67, i32 0)
  %69 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @ipw_write32(%struct.ipw_priv* %69, i8* %70, i32 0)
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %73 = call i32 @_ipw_read32(%struct.ipw_priv* %72, i32 144)
  ret void
}

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i8*, i32) #1

declare dso_local i32 @_ipw_read32(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
