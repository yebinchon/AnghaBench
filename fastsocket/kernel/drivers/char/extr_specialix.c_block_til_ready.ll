; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }
%struct.specialix_port = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.specialix_board = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@CD186x_CAR = common dso_local global i32 0, align 4
@CD186x_MSVR = common dso_local global i32 0, align 4
@MSVR_CD = common dso_local global i32 0, align 4
@MSVR_DTR = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.specialix_port*)* @block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_til_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.specialix_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.specialix_port*, align 8
  %8 = alloca %struct.specialix_board*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.specialix_port* %2, %struct.specialix_port** %7, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  %16 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %17 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %16)
  store %struct.specialix_board* %17, %struct.specialix_board** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = call i32 (...) @func_enter()
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = call i64 @tty_hung_up_p(%struct.file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %24 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ASYNC_CLOSING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %22, %3
  %31 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %32 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = call i32 @interruptible_sleep_on(i32* %33)
  %35 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %36 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = call i32 (...) @func_exit()
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %248

46:                                               ; preds = %30
  %47 = call i32 (...) @func_exit()
  %48 = load i32, i32* @ERESTARTSYS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %248

50:                                               ; preds = %22
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @O_NONBLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TTY_IO_ERROR, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57, %50
  %66 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %67 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %68 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = call i32 (...) @func_exit()
  store i32 0, i32* %4, align 4
  br label %248

73:                                               ; preds = %57
  %74 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %75 = call i64 @C_CLOCAL(%struct.tty_struct* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %73
  store i32 0, i32* %9, align 4
  %79 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %80 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = call i32 @add_wait_queue(i32* %81, i32* @wait)
  %83 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %84 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %83, i32 0, i32 1
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.file*, %struct.file** %6, align 8
  %88 = call i64 @tty_hung_up_p(%struct.file* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %78
  %91 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %92 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %78
  %97 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %98 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %97, i32 0, i32 1
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %102 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %96, %203
  %107 = load %struct.specialix_board*, %struct.specialix_board** %8, align 8
  %108 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %107, i32 0, i32 0
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  %111 = load %struct.specialix_board*, %struct.specialix_board** %8, align 8
  %112 = load i32, i32* @CD186x_CAR, align 4
  %113 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %114 = call i32 @port_No(%struct.specialix_port* %113)
  %115 = call i32 @sx_out(%struct.specialix_board* %111, i32 %112, i32 %114)
  %116 = load %struct.specialix_board*, %struct.specialix_board** %8, align 8
  %117 = load i32, i32* @CD186x_MSVR, align 4
  %118 = call i32 @sx_in(%struct.specialix_board* %116, i32 %117)
  %119 = load i32, i32* @MSVR_CD, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %11, align 4
  %121 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %122 = call i64 @sx_crtscts(%struct.tty_struct* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %106
  %125 = load i32, i32* @MSVR_DTR, align 4
  %126 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %127 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.specialix_board*, %struct.specialix_board** %8, align 8
  %131 = load i32, i32* @CD186x_MSVR, align 4
  %132 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %133 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @sx_out(%struct.specialix_board* %130, i32 %131, i32 %134)
  br label %148

136:                                              ; preds = %106
  %137 = load i32, i32* @MSVR_DTR, align 4
  %138 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %139 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.specialix_board*, %struct.specialix_board** %8, align 8
  %143 = load i32, i32* @CD186x_MSVR, align 4
  %144 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %145 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @sx_out(%struct.specialix_board* %142, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %136, %124
  %149 = load %struct.specialix_board*, %struct.specialix_board** %8, align 8
  %150 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %149, i32 0, i32 0
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %154 = call i32 @set_current_state(i32 %153)
  %155 = load %struct.file*, %struct.file** %6, align 8
  %156 = call i64 @tty_hung_up_p(%struct.file* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %148
  %159 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %160 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %158, %148
  %167 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %168 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %166
  %175 = load i32, i32* @EAGAIN, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %9, align 4
  br label %180

177:                                              ; preds = %166
  %178 = load i32, i32* @ERESTARTSYS, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %177, %174
  br label %205

181:                                              ; preds = %158
  %182 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %183 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ASYNC_CLOSING, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192, %189
  br label %205

196:                                              ; preds = %192, %181
  %197 = load i32, i32* @current, align 4
  %198 = call i64 @signal_pending(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* @ERESTARTSYS, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %9, align 4
  br label %205

203:                                              ; preds = %196
  %204 = call i32 (...) @schedule()
  br label %106

205:                                              ; preds = %200, %195, %180
  %206 = load i32, i32* @TASK_RUNNING, align 4
  %207 = call i32 @set_current_state(i32 %206)
  %208 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %209 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 3
  %211 = call i32 @remove_wait_queue(i32* %210, i32* @wait)
  %212 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %213 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %212, i32 0, i32 1
  %214 = load i64, i64* %12, align 8
  %215 = call i32 @spin_lock_irqsave(i32* %213, i64 %214)
  %216 = load %struct.file*, %struct.file** %6, align 8
  %217 = call i64 @tty_hung_up_p(%struct.file* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %205
  %220 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %221 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %205
  %226 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %227 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %228, align 4
  %231 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %232 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %231, i32 0, i32 1
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @spin_unlock_irqrestore(i32* %232, i64 %233)
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %225
  %238 = call i32 (...) @func_exit()
  %239 = load i32, i32* %9, align 4
  store i32 %239, i32* %4, align 4
  br label %248

240:                                              ; preds = %225
  %241 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %242 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  %243 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %241
  store i32 %246, i32* %244, align 4
  %247 = call i32 (...) @func_exit()
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %240, %237, %65, %46, %42
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local %struct.specialix_board* @port_Board(%struct.specialix_port*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i32) #1

declare dso_local i32 @port_No(%struct.specialix_port*) #1

declare dso_local i32 @sx_in(%struct.specialix_board*, i32) #1

declare dso_local i64 @sx_crtscts(%struct.tty_struct*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
