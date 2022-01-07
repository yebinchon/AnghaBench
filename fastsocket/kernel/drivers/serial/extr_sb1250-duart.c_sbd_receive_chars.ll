; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbd_port = type { %struct.uart_port }
%struct.uart_port = type { i32, %struct.TYPE_4__*, %struct.uart_icount }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32 }

@R_DUART_STATUS = common dso_local global i32 0, align 4
@M_DUART_RX_RDY = common dso_local global i32 0, align 4
@R_DUART_RX_HOLD = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@M_DUART_RCVD_BRK = common dso_local global i32 0, align 4
@M_DUART_FRM_ERR = common dso_local global i32 0, align 4
@M_DUART_PARITY_ERR = common dso_local global i32 0, align 4
@M_DUART_OVRUN_ERR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbd_port*)* @sbd_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_receive_chars(%struct.sbd_port* %0) #0 {
  %2 = alloca %struct.sbd_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_icount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbd_port* %0, %struct.sbd_port** %2, align 8
  %9 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %10 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %9, i32 0, i32 0
  store %struct.uart_port* %10, %struct.uart_port** %3, align 8
  store i32 16, i32* %8, align 4
  br label %11

11:                                               ; preds = %134, %1
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %137

14:                                               ; preds = %11
  %15 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %16 = load i32, i32* @R_DUART_STATUS, align 4
  %17 = call i32 @read_sbdchn(%struct.sbd_port* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @M_DUART_RX_RDY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %137

23:                                               ; preds = %14
  %24 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %25 = load i32, i32* @R_DUART_RX_HOLD, align 4
  %26 = call i32 @read_sbdchn(%struct.sbd_port* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 2
  store %struct.uart_icount* %29, %struct.uart_icount** %4, align 8
  %30 = load %struct.uart_icount*, %struct.uart_icount** %4, align 8
  %31 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %36 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %34, %41
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %121

45:                                               ; preds = %23
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.uart_icount*, %struct.uart_icount** %4, align 8
  %52 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = call i64 @uart_handle_break(%struct.uart_port* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %134

59:                                               ; preds = %50
  br label %82

60:                                               ; preds = %45
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.uart_icount*, %struct.uart_icount** %4, align 8
  %67 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.uart_icount*, %struct.uart_icount** %4, align 8
  %77 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.uart_icount*, %struct.uart_icount** %4, align 8
  %89 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @TTY_BREAK, align 4
  store i32 %103, i32* %7, align 4
  br label %120

104:                                              ; preds = %92
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @TTY_FRAME, align 4
  store i32 %110, i32* %7, align 4
  br label %119

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @TTY_PARITY, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %111
  br label %119

119:                                              ; preds = %118, %109
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %23
  %122 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %134

127:                                              ; preds = %121
  %128 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @uart_insert_char(%struct.uart_port* %128, i32 %129, i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %126, %58
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %8, align 4
  br label %11

137:                                              ; preds = %22, %11
  %138 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tty_flip_buffer_push(i32 %143)
  ret void
}

declare dso_local i32 @read_sbdchn(%struct.sbd_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
