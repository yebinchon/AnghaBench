; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i64 }
%struct.tty_struct = type { i32, i32, i32, %struct.async_struct* }
%struct.async_struct = type { i32, i32, i32, %struct.tty_struct*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }

@NR_PORTS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ASYNC_LOW_LATENCY = common dso_local global i32 0, align 4
@tmp_buf = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@console_drivers = common dso_local global %struct.TYPE_5__* null, align 8
@console = common dso_local global %struct.TYPE_5__* null, align 8
@CON_ENABLED = common dso_local global i32 0, align 4
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
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NR_PORTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @get_async_struct(i32 %23, %struct.async_struct** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %123

29:                                               ; preds = %22
  %30 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 3
  store %struct.async_struct* %30, %struct.async_struct** %32, align 8
  %33 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %34 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %35 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %34, i32 0, i32 3
  store %struct.tty_struct* %33, %struct.tty_struct** %35, align 8
  %36 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %37 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ASYNC_LOW_LATENCY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %45 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %44, i32 0, i32 3
  %46 = load %struct.tty_struct*, %struct.tty_struct** %45, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i8*, i8** @tmp_buf, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %29
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64 @get_zeroed_page(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %123

58:                                               ; preds = %50
  %59 = load i8*, i8** @tmp_buf, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @free_page(i64 %62)
  br label %67

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** @tmp_buf, align 8
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.file*, %struct.file** %5, align 8
  %70 = call i64 @tty_hung_up_p(%struct.file* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %74 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ASYNC_CLOSING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %72, %68
  %80 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %81 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ASYNC_CLOSING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %88 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %87, i32 0, i32 2
  %89 = call i32 @interruptible_sleep_on(i32* %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %123

93:                                               ; preds = %72
  %94 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %95 = call i32 @startup(%struct.async_struct* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %123

100:                                              ; preds = %93
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @console_drivers, align 8
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** @console, align 8
  br label %102

102:                                              ; preds = %118, %100
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @console, align 8
  %104 = icmp ne %struct.TYPE_5__* %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @console, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CON_ENABLED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @console, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112, %105
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @console, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** @console, align 8
  br label %102

122:                                              ; preds = %117, %102
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %98, %90, %55, %27, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @get_async_struct(i32, %struct.async_struct**) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @startup(%struct.async_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
