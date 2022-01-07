; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_verify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.serial_struct = type { i64, i64, i64, i32, i8*, i64, i64 }
%struct.mpsc_port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"mpsc_verify_port[%d]: Verifying port data\0A\00", align 1
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@PORT_MPSC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SERIAL_IO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @mpsc_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.mpsc_port_info*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.mpsc_port_info*
  store %struct.mpsc_port_info* %8, %struct.mpsc_port_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %5, align 8
  %10 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %15 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORT_UNKNOWN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORT_MPSC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %101

28:                                               ; preds = %19, %2
  %29 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %5, align 8
  %30 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %34 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %100

40:                                               ; preds = %28
  %41 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %42 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SERIAL_IO_MEM, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %99

49:                                               ; preds = %40
  %50 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %5, align 8
  %51 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 16
  %55 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %56 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %98

62:                                               ; preds = %49
  %63 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %5, align 8
  %64 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %69 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %97

75:                                               ; preds = %62
  %76 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %5, align 8
  %77 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %81 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %89 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %59
  br label %99

99:                                               ; preds = %98, %46
  br label %100

100:                                              ; preds = %99, %37
  br label %101

101:                                              ; preds = %100, %25
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
