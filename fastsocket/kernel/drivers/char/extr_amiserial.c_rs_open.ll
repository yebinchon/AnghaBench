; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, %struct.async_struct* }
%struct.async_struct = type { i32, i32, %struct.tty_struct*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@NR_PORTS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rs_open\00", align 1
@ASYNC_LOW_LATENCY = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @rs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.async_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NR_PORTS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %98

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @get_async_struct(i32 %22, %struct.async_struct** %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %21
  %29 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 3
  store %struct.async_struct* %29, %struct.async_struct** %31, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %34 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %33, i32 0, i32 2
  store %struct.tty_struct* %32, %struct.tty_struct** %34, align 8
  %35 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @serial_paranoia_check(%struct.async_struct* %35, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %28
  %45 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %46 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ASYNC_LOW_LATENCY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %54 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %53, i32 0, i32 2
  %55 = load %struct.tty_struct*, %struct.tty_struct** %54, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 8
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = call i64 @tty_hung_up_p(%struct.file* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %44
  %61 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %62 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ASYNC_CLOSING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60, %44
  %68 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %69 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ASYNC_CLOSING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %76 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %75, i32 0, i32 1
  %77 = call i32 @interruptible_sleep_on(i32* %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %98

81:                                               ; preds = %60
  %82 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %83 = call i32 @startup(%struct.async_struct* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %98

88:                                               ; preds = %81
  %89 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %92 = call i32 @block_til_ready(%struct.tty_struct* %89, %struct.file* %90, %struct.async_struct* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %95, %86, %78, %41, %26, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @get_async_struct(i32, %struct.async_struct**) #1

declare dso_local i64 @serial_paranoia_check(%struct.async_struct*, i32, i8*) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @startup(%struct.async_struct*) #1

declare dso_local i32 @block_til_ready(%struct.tty_struct*, %struct.file*, %struct.async_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
