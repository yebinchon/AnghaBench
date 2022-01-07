; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.slgt_info = type { i32, %struct.tty_port }
%struct.tty_port = type { i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s block_til_ready\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s block_til_ready wait\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s block_til_ready ready, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.slgt_info*)* @block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_til_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.slgt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.slgt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.slgt_info* %2, %struct.slgt_info** %7, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @DECLARE_WAITQUEUE(i32 %14, i32 %15)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %18 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %17, i32 0, i32 1
  store %struct.tty_port* %18, %struct.tty_port** %13, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DBGINFO(i8* %25)
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @O_NONBLOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %3
  %34 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TTY_IO_ERROR, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33, %3
  %42 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %43 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %44 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %192

47:                                               ; preds = %33
  %48 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CLOCAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %47
  store i32 0, i32* %8, align 4
  %58 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %59 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %58, i32 0, i32 3
  %60 = call i32 @add_wait_queue(i32* %59, i32* @wait)
  %61 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 0
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = call i64 @tty_hung_up_p(%struct.file* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  %69 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %70 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %57
  %74 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %75 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %74, i32 0, i32 0
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %79 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %145
  %83 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %84 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CBAUD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %93 = call i32 @tty_port_raise_dtr_rts(%struct.tty_port* %92)
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %96 = call i32 @set_current_state(i32 %95)
  %97 = load %struct.file*, %struct.file** %6, align 8
  %98 = call i64 @tty_hung_up_p(%struct.file* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %102 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %109 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  br label %120

117:                                              ; preds = %107
  %118 = load i32, i32* @ERESTARTSYS, align 4
  %119 = sub nsw i32 0, %118
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  store i32 %121, i32* %8, align 4
  br label %155

122:                                              ; preds = %100
  %123 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %124 = call i32 @tty_port_carrier_raised(%struct.tty_port* %123)
  store i32 %124, i32* %12, align 4
  %125 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %126 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ASYNC_CLOSING, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134, %131
  br label %155

138:                                              ; preds = %134, %122
  %139 = load i32, i32* @current, align 4
  %140 = call i64 @signal_pending(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @ERESTARTSYS, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %155

145:                                              ; preds = %138
  %146 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %147 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @DBGINFO(i8* %152)
  %154 = call i32 (...) @schedule()
  br label %82

155:                                              ; preds = %142, %137, %120
  %156 = load i32, i32* @TASK_RUNNING, align 4
  %157 = call i32 @set_current_state(i32 %156)
  %158 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %159 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %158, i32 0, i32 3
  %160 = call i32 @remove_wait_queue(i32* %159, i32* @wait)
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %165 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %163, %155
  %169 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %170 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %177 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %178 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %183 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = call i32 @DBGINFO(i8* %189)
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %181, %41
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_raise_dtr_rts(%struct.tty_port*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @tty_port_carrier_raised(%struct.tty_port*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
