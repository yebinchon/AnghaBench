; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c___sdla_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c___sdla_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@SDLA_ADDR_MASK = common dso_local global i32 0, align 4
@SDLA_WINDOW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*, i16)* @__sdla_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sdla_write(%struct.net_device* %0, i32 %1, i8* %2, i16 signext %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i16 %3, i16* %8, align 2
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %34, %4
  %15 = load i16, i16* %8, align 2
  %16 = icmp ne i16 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SDLA_ADDR_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i16, i16* %8, align 2
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* @SDLA_WINDOW_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @SDLA_WINDOW_SIZE, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %28, %29
  br label %34

31:                                               ; preds = %17
  %32 = load i16, i16* %8, align 2
  %33 = sext i16 %32 to i32
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %33, %31 ]
  store i32 %35, i32* %12, align 4
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %10, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SDLA_WINDOW(%struct.net_device* %43, i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i16, i16* %8, align 2
  %59 = sext i16 %58 to i32
  %60 = sub nsw i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %8, align 2
  br label %14

62:                                               ; preds = %14
  ret void
}

declare dso_local i32 @SDLA_WINDOW(%struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
