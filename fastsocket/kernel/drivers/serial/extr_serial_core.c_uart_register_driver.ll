; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uart_driver = type { i32, %struct.uart_state*, i32, i32, i32, i32, i32, %struct.tty_driver* }
%struct.uart_state = type { i32, %struct.tty_port }
%struct.tty_port = type { i32, i32 }
%struct.tty_driver = type { i32, %struct.uart_driver*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@uart_ops = common dso_local global i32 0, align 4
@uart_tasklet_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_register_driver(%struct.uart_driver* %0) #0 {
  %2 = alloca %struct.uart_driver*, align 8
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  store %struct.uart_driver* %0, %struct.uart_driver** %2, align 8
  store %struct.tty_driver* null, %struct.tty_driver** %3, align 8
  %8 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %9 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %8, i32 0, i32 1
  %10 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  %11 = call i32 @BUG_ON(%struct.uart_state* %10)
  %12 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %13 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 12, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.uart_state* @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %21 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %20, i32 0, i32 1
  store %struct.uart_state* %19, %struct.uart_state** %21, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %25 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %24, i32 0, i32 1
  %26 = load %struct.uart_state*, %struct.uart_state** %25, align 8
  %27 = icmp ne %struct.uart_state* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %136

29:                                               ; preds = %1
  %30 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %31 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.tty_driver* @alloc_tty_driver(i32 %32)
  store %struct.tty_driver* %33, %struct.tty_driver** %3, align 8
  %34 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %35 = icmp ne %struct.tty_driver* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %136

37:                                               ; preds = %29
  %38 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %39 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %40 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %39, i32 0, i32 7
  store %struct.tty_driver* %38, %struct.tty_driver** %40, align 8
  %41 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %42 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %45 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %47 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %50 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %52 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %55 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %57 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %60 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %62 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %65 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %67 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %68 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %70 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %71 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %73 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %72, i32 0, i32 2
  %74 = bitcast %struct.TYPE_2__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 4 bitcast (%struct.TYPE_2__* @tty_std_termios to i8*), i64 12, i1 false)
  %75 = load i32, i32* @B9600, align 4
  %76 = load i32, i32* @CS8, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CREAD, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @HUPCL, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CLOCAL, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %85 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %88 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 9600, i32* %89, align 8
  %90 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %91 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 9600, i32* %92, align 4
  %93 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %94 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %97 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %99 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %100 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %99, i32 0, i32 1
  store %struct.uart_driver* %98, %struct.uart_driver** %100, align 8
  %101 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %102 = call i32 @tty_set_operations(%struct.tty_driver* %101, i32* @uart_ops)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %130, %37
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %106 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %103
  %110 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %111 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %110, i32 0, i32 1
  %112 = load %struct.uart_state*, %struct.uart_state** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %112, i64 %114
  store %struct.uart_state* %115, %struct.uart_state** %6, align 8
  %116 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %117 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %116, i32 0, i32 1
  store %struct.tty_port* %117, %struct.tty_port** %7, align 8
  %118 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %119 = call i32 @tty_port_init(%struct.tty_port* %118)
  %120 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %121 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %120, i32 0, i32 0
  store i32 500, i32* %121, align 4
  %122 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %123 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %122, i32 0, i32 1
  store i32 30000, i32* %123, align 4
  %124 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %125 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %124, i32 0, i32 0
  %126 = load i32, i32* @uart_tasklet_action, align 4
  %127 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %128 = ptrtoint %struct.uart_state* %127 to i64
  %129 = call i32 @tasklet_init(i32* %125, i32 %126, i64 %128)
  br label %130

130:                                              ; preds = %109
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %103

133:                                              ; preds = %103
  %134 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %135 = call i32 @tty_register_driver(%struct.tty_driver* %134)
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %36, %28
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %141 = call i32 @put_tty_driver(%struct.tty_driver* %140)
  %142 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %143 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %142, i32 0, i32 1
  %144 = load %struct.uart_state*, %struct.uart_state** %143, align 8
  %145 = call i32 @kfree(%struct.uart_state* %144)
  br label %146

146:                                              ; preds = %139, %136
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @BUG_ON(%struct.uart_state*) #1

declare dso_local %struct.uart_state* @kzalloc(i32, i32) #1

declare dso_local %struct.tty_driver* @alloc_tty_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.tty_driver*, i32*) #1

declare dso_local i32 @tty_port_init(%struct.tty_port*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

declare dso_local i32 @kfree(%struct.uart_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
