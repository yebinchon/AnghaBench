; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_dot_command.c_ibmasm_send_driver_vpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_dot_command.c_ibmasm_send_driver_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32 }
%struct.command = type { i32*, i64 }
%struct.dot_command_header = type { i32, i32, i64, i64, i32 }

@INIT_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sp_write = common dso_local global i32 0, align 4
@IBMASM_DRIVER_VPD = common dso_local global i32 0, align 4
@IBMASM_CMD_TIMEOUT_NORMAL = common dso_local global i32 0, align 4
@IBMASM_CMD_COMPLETE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmasm_send_driver_vpd(%struct.service_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.service_processor*, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.dot_command_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.service_processor* %0, %struct.service_processor** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %10 = load i32, i32* @INIT_BUFFER_SIZE, align 4
  %11 = call %struct.command* @ibmasm_new_command(%struct.service_processor* %9, i32 %10)
  store %struct.command* %11, %struct.command** %4, align 8
  %12 = load %struct.command*, %struct.command** %4, align 8
  %13 = icmp eq %struct.command* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.command*, %struct.command** %4, align 8
  %19 = getelementptr inbounds %struct.command, %struct.command* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.dot_command_header*
  store %struct.dot_command_header* %21, %struct.dot_command_header** %5, align 8
  %22 = load i32, i32* @sp_write, align 4
  %23 = load %struct.dot_command_header*, %struct.dot_command_header** %5, align 8
  %24 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dot_command_header*, %struct.dot_command_header** %5, align 8
  %26 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.dot_command_header*, %struct.dot_command_header** %5, align 8
  %28 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %27, i32 0, i32 1
  store i32 16, i32* %28, align 4
  %29 = load %struct.dot_command_header*, %struct.dot_command_header** %5, align 8
  %30 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.dot_command_header*, %struct.dot_command_header** %5, align 8
  %32 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.command*, %struct.command** %4, align 8
  %34 = getelementptr inbounds %struct.command, %struct.command* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 32
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 4, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 3, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 5, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 10, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.dot_command_header*, %struct.dot_command_header** %5, align 8
  %47 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @IBMASM_DRIVER_VPD, align 4
  %55 = call i32 @strcat(i32* %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 15
  store i32 0, i32* %59, align 4
  %60 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %61 = load %struct.command*, %struct.command** %4, align 8
  %62 = call i32 @ibmasm_exec_command(%struct.service_processor* %60, %struct.command* %61)
  %63 = load %struct.command*, %struct.command** %4, align 8
  %64 = load i32, i32* @IBMASM_CMD_TIMEOUT_NORMAL, align 4
  %65 = call i32 @ibmasm_wait_for_response(%struct.command* %63, i32 %64)
  %66 = load %struct.command*, %struct.command** %4, align 8
  %67 = getelementptr inbounds %struct.command, %struct.command* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IBMASM_CMD_COMPLETE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %17
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %17
  %75 = load %struct.command*, %struct.command** %4, align 8
  %76 = call i32 @command_put(%struct.command* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.command* @ibmasm_new_command(%struct.service_processor*, i32) #1

declare dso_local i32 @strcat(i32*, i32) #1

declare dso_local i32 @ibmasm_exec_command(%struct.service_processor*, %struct.command*) #1

declare dso_local i32 @ibmasm_wait_for_response(%struct.command*, i32) #1

declare dso_local i32 @command_put(%struct.command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
