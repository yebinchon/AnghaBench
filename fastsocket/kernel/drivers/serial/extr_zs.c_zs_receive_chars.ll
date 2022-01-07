; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { i32, %struct.zs_scc*, %struct.uart_port }
%struct.zs_scc = type { i32 }
%struct.uart_port = type { i32, %struct.TYPE_4__*, %struct.uart_icount }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32 }

@R0 = common dso_local global i32 0, align 4
@Rx_CH_AV = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@FRM_ERR = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@Rx_SYS = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@ERR_RES = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_port*)* @zs_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_receive_chars(%struct.zs_port* %0) #0 {
  %2 = alloca %struct.zs_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.zs_scc*, align 8
  %5 = alloca %struct.uart_icount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zs_port* %0, %struct.zs_port** %2, align 8
  %11 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %12 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %11, i32 0, i32 2
  store %struct.uart_port* %12, %struct.uart_port** %3, align 8
  %13 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %14 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %13, i32 0, i32 1
  %15 = load %struct.zs_scc*, %struct.zs_scc** %14, align 8
  store %struct.zs_scc* %15, %struct.zs_scc** %4, align 8
  store i32 16, i32* %10, align 4
  br label %16

16:                                               ; preds = %195, %1
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %198

19:                                               ; preds = %16
  %20 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %21 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %24 = load i32, i32* @R0, align 4
  %25 = call i32 @read_zsreg(%struct.zs_port* %23, i32 %24)
  %26 = load i32, i32* @Rx_CH_AV, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %29 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %198

34:                                               ; preds = %19
  %35 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %36 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %39 = load i32, i32* @R1, align 4
  %40 = call i32 @read_zsreg(%struct.zs_port* %38, i32 %39)
  %41 = load i32, i32* @Rx_OVR, align 4
  %42 = load i32, i32* @FRM_ERR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PAR_ERR, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %48 = call i32 @read_zsdata(%struct.zs_port* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %50 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 2
  store %struct.uart_icount* %54, %struct.uart_icount** %5, align 8
  %55 = load %struct.uart_icount*, %struct.uart_icount** %5, align 8
  %56 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %34
  %62 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %63 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %34
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @Rx_OVR, align 4
  %70 = load i32, i32* @FRM_ERR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PAR_ERR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @Rx_SYS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @Rx_BRK, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %68, %77
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %182

81:                                               ; preds = %67
  %82 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %83 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @Rx_OVR, align 4
  %86 = load i32, i32* @FRM_ERR, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PAR_ERR, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %94 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %97 = load i32, i32* @R0, align 4
  %98 = load i32, i32* @ERR_RES, align 4
  %99 = call i32 @write_zsreg(%struct.zs_port* %96, i32 %97, i32 %98)
  %100 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %101 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %92, %81
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @Rx_SYS, align 4
  %106 = load i32, i32* @Rx_BRK, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load %struct.uart_icount*, %struct.uart_icount** %5, align 8
  %112 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @Rx_SYS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %195

120:                                              ; preds = %110
  br label %143

121:                                              ; preds = %103
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @FRM_ERR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.uart_icount*, %struct.uart_icount** %5, align 8
  %128 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %142

131:                                              ; preds = %121
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @PAR_ERR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.uart_icount*, %struct.uart_icount** %5, align 8
  %138 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142, %120
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @Rx_OVR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.uart_icount*, %struct.uart_icount** %5, align 8
  %150 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %155 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @Rx_BRK, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* @TTY_BREAK, align 4
  store i32 %164, i32* %9, align 4
  br label %181

165:                                              ; preds = %153
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @FRM_ERR, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @TTY_FRAME, align 4
  store i32 %171, i32* %9, align 4
  br label %180

172:                                              ; preds = %165
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @PAR_ERR, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @TTY_PARITY, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %177, %172
  br label %180

180:                                              ; preds = %179, %170
  br label %181

181:                                              ; preds = %180, %163
  br label %182

182:                                              ; preds = %181, %67
  %183 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %195

188:                                              ; preds = %182
  %189 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @Rx_OVR, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @uart_insert_char(%struct.uart_port* %189, i32 %190, i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %188, %187, %119
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %10, align 4
  br label %16

198:                                              ; preds = %33, %16
  %199 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %200 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %199, i32 0, i32 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @tty_flip_buffer_push(i32 %204)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_zsdata(%struct.zs_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
