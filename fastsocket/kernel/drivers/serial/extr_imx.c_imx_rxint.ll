; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_rxint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i64, %struct.TYPE_8__, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@USR2 = common dso_local global i64 0, align 8
@USR2_RDR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@URXD0 = common dso_local global i64 0, align 8
@USR2_BRCD = common dso_local global i64 0, align 8
@URXD_PRERR = common dso_local global i32 0, align 4
@URXD_OVRRUN = common dso_local global i32 0, align 4
@URXD_FRMERR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rxint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.imx_port*
  store %struct.imx_port* %13, %struct.imx_port** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %15 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.tty_struct*, %struct.tty_struct** %19, align 8
  store %struct.tty_struct* %20, %struct.tty_struct** %9, align 8
  %21 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %22 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %178, %148, %88, %79, %2
  %27 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %28 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USR2, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32, i32* @USR2_RDR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %183

37:                                               ; preds = %26
  %38 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %40 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %46 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @URXD0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %53 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @USR2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @USR2_BRCD, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %37
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @USR2_BRCD, align 8
  %67 = or i64 %65, %66
  %68 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %69 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @USR2, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i64 %67, i64 %73)
  %75 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %76 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %75, i32 0, i32 0
  %77 = call i64 @uart_handle_break(%struct.TYPE_9__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %26

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %37
  %82 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %83 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %82, i32 0, i32 0
  %84 = load i32, i32* %6, align 4
  %85 = trunc i32 %84 to i8
  %86 = call i64 @uart_handle_sysrq_char(%struct.TYPE_9__* %83, i8 zeroext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %26

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @URXD_PRERR, align 4
  %92 = load i32, i32* @URXD_OVRRUN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @URXD_FRMERR, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %90, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %178

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @URXD_PRERR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %105 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %123

110:                                              ; preds = %98
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @URXD_FRMERR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %117 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %115, %110
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @URXD_OVRRUN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %130 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %123
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %138 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %136, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = icmp ugt i32 %145, 100
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %184

148:                                              ; preds = %143
  br label %26

149:                                              ; preds = %135
  %150 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %151 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @URXD_PRERR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i32, i32* @TTY_PARITY, align 4
  store i32 %161, i32* %7, align 4
  br label %170

162:                                              ; preds = %149
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @URXD_FRMERR, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* @TTY_FRAME, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %167, %162
  br label %170

170:                                              ; preds = %169, %160
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @URXD_OVRRUN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %175, %170
  br label %178

178:                                              ; preds = %177, %89
  %179 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @tty_insert_flip_char(%struct.tty_struct* %179, i32 %180, i32 %181)
  br label %26

183:                                              ; preds = %26
  br label %184

184:                                              ; preds = %183, %147
  %185 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %186 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  %190 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %191 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %190)
  %192 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %192
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_9__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_9__*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
