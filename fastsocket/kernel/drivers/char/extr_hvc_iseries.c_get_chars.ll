; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iseries.c_get_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iseries.c_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32* }

@VTTY_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@port_info = common dso_local global %struct.port_info* null, align 8
@consolelock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @get_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chars(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @VTTY_PORTS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %79

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %79

21:                                               ; preds = %17
  %22 = load %struct.port_info*, %struct.port_info** @port_info, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i64 %23
  store %struct.port_info* %24, %struct.port_info** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @consolelock, i64 %25)
  %27 = load %struct.port_info*, %struct.port_info** %8, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %75

32:                                               ; preds = %21
  %33 = load %struct.port_info*, %struct.port_info** %8, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.port_info*, %struct.port_info** %8, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.port_info*, %struct.port_info** %8, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.port_info*, %struct.port_info** %8, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @memcpy(i8* %46, i32* %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.port_info*, %struct.port_info** %8, align 8
  %59 = getelementptr inbounds %struct.port_info, %struct.port_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.port_info*, %struct.port_info** %8, align 8
  %63 = getelementptr inbounds %struct.port_info, %struct.port_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.port_info*, %struct.port_info** %8, align 8
  %66 = getelementptr inbounds %struct.port_info, %struct.port_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %45
  %70 = load %struct.port_info*, %struct.port_info** %8, align 8
  %71 = getelementptr inbounds %struct.port_info, %struct.port_info* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.port_info*, %struct.port_info** %8, align 8
  %73 = getelementptr inbounds %struct.port_info, %struct.port_info* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %45
  br label %75

75:                                               ; preds = %74, %31
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* @consolelock, i64 %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %20, %14
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
