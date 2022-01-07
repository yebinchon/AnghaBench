; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@wait = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_port_block_til_ready(%struct.tty_port* %0, %struct.tty_struct* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tty_port* %0, %struct.tty_port** %5, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call i64 @tty_hung_up_p(%struct.file* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ASYNC_CLOSING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %17, %3
  %25 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %26 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %29 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ASYNC_CLOSING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event_interruptible(i32 %27, i32 %35)
  %37 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %38 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %216

46:                                               ; preds = %24
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %216

49:                                               ; preds = %17
  %50 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TTY_IO_ERROR, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %59 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %60 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %216

63:                                               ; preds = %49
  %64 = load %struct.file*, %struct.file** %7, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @O_NONBLOCK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %63
  %71 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %72 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CBAUD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %81 = call i32 @tty_port_raise_dtr_rts(%struct.tty_port* %80)
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %84 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %85 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %216

88:                                               ; preds = %63
  %89 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %90 = call i64 @C_CLOCAL(%struct.tty_struct* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %88
  store i32 0, i32* %9, align 4
  %94 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %95 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %94, i32 0, i32 1
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.file*, %struct.file** %7, align 8
  %99 = call i64 @tty_hung_up_p(%struct.file* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %103 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %93
  %107 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %108 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %112 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %111, i32 0, i32 1
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %106, %179
  %116 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %117 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CBAUD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %126 = call i32 @tty_port_raise_dtr_rts(%struct.tty_port* %125)
  br label %127

127:                                              ; preds = %124, %115
  %128 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %129 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %128, i32 0, i32 4
  %130 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %131 = call i32 @prepare_to_wait(i32* %129, i32* @wait, i32 %130)
  %132 = load %struct.file*, %struct.file** %7, align 8
  %133 = call i64 @tty_hung_up_p(%struct.file* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %127
  %136 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %137 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %135, %127
  %143 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %144 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %9, align 4
  br label %155

152:                                              ; preds = %142
  %153 = load i32, i32* @ERESTARTSYS, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %152, %149
  br label %181

156:                                              ; preds = %135
  %157 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %158 = call i32 @tty_port_carrier_raised(%struct.tty_port* %157)
  store i32 %158, i32* %11, align 4
  %159 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %160 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ASYNC_CLOSING, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168, %165
  br label %181

172:                                              ; preds = %168, %156
  %173 = load i32, i32* @current, align 4
  %174 = call i64 @signal_pending(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* @ERESTARTSYS, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %9, align 4
  br label %181

179:                                              ; preds = %172
  %180 = call i32 (...) @schedule()
  br label %115

181:                                              ; preds = %176, %171, %155
  %182 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %183 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %182, i32 0, i32 4
  %184 = call i32 @finish_wait(i32* %183, i32* @wait)
  %185 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %186 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %185, i32 0, i32 1
  %187 = load i64, i64* %10, align 8
  %188 = call i32 @spin_lock_irqsave(i32* %186, i64 %187)
  %189 = load %struct.file*, %struct.file** %7, align 8
  %190 = call i64 @tty_hung_up_p(%struct.file* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %181
  %193 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %194 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %192, %181
  %198 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %199 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %206 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %207 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %197
  %211 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %212 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %211, i32 0, i32 1
  %213 = load i64, i64* %10, align 8
  %214 = call i32 @spin_unlock_irqrestore(i32* %212, i64 %213)
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %210, %82, %57, %46, %43
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @tty_port_raise_dtr_rts(%struct.tty_port*) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @tty_port_carrier_raised(%struct.tty_port*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
