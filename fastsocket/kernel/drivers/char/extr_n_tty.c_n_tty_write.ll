; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, i8*, i64)*, i32 (%struct.tty_struct*)* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@redirected_tty_write = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TTY_HW_COOK_OUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i8*, i64)* @n_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_write(%struct.tty_struct* %0, %struct.file* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @DECLARE_WAITQUEUE(i32 %15, i32 %16)
  store i32 0, i32* %12, align 4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %19 = call i64 @L_TOSTOP(%struct.tty_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @redirected_tty_write, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %31 = call i32 @tty_check_change(%struct.tty_struct* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %233

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %21, %4
  %38 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %39 = call i32 @process_echoes(%struct.tty_struct* %38)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 2
  %42 = call i32 @add_wait_queue(i32* %41, i32* @wait)
  br label %43

43:                                               ; preds = %37, %188
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %45 = call i32 @set_current_state(i32 %44)
  %46 = load i32, i32* @current, align 4
  %47 = call i64 @signal_pending(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ERESTARTSYS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %190

52:                                               ; preds = %43
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = call i64 @tty_hung_up_p(%struct.file* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61, %52
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %190

71:                                               ; preds = %61, %56
  %72 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %73 = call i64 @O_OPOST(%struct.tty_struct* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %142

75:                                               ; preds = %71
  %76 = load i32, i32* @TTY_HW_COOK_OUT, align 4
  %77 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 0
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %142, label %81

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %121, %81
  %83 = load i64, i64* %9, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %126

85:                                               ; preds = %82
  %86 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @process_output_block(%struct.tty_struct* %86, i8* %87, i64 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %126

98:                                               ; preds = %92
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %12, align 4
  br label %191

100:                                              ; preds = %85
  %101 = load i32, i32* %13, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %126

112:                                              ; preds = %100
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %118 = call i64 @process_output(i32 %116, %struct.tty_struct* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %126

121:                                              ; preds = %112
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %10, align 8
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %9, align 8
  br label %82

126:                                              ; preds = %120, %111, %97, %82
  %127 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %128 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %127, i32 0, i32 3
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %130, align 8
  %132 = icmp ne i32 (%struct.tty_struct*)* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %135 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %137, align 8
  %139 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %140 = call i32 %138(%struct.tty_struct* %139)
  br label %141

141:                                              ; preds = %133, %126
  br label %174

142:                                              ; preds = %75, %71
  br label %143

143:                                              ; preds = %164, %142
  %144 = load i64, i64* %9, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %173

146:                                              ; preds = %143
  %147 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %148 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32 (%struct.tty_struct*, i8*, i64)*, i32 (%struct.tty_struct*, i8*, i64)** %150, align 8
  %152 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 %151(%struct.tty_struct* %152, i8* %153, i64 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %146
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %12, align 4
  br label %191

160:                                              ; preds = %146
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  br label %173

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %9, align 8
  %172 = sub i64 %171, %170
  store i64 %172, i64* %9, align 8
  br label %143

173:                                              ; preds = %163, %143
  br label %174

174:                                              ; preds = %173, %141
  %175 = load i64, i64* %9, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %190

178:                                              ; preds = %174
  %179 = load %struct.file*, %struct.file** %7, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @O_NONBLOCK, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load i32, i32* @EAGAIN, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %12, align 4
  br label %190

188:                                              ; preds = %178
  %189 = call i32 (...) @schedule()
  br label %43

190:                                              ; preds = %185, %177, %68, %49
  br label %191

191:                                              ; preds = %190, %158, %98
  %192 = load i32, i32* @TASK_RUNNING, align 4
  %193 = call i32 @__set_current_state(i32 %192)
  %194 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %195 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %194, i32 0, i32 2
  %196 = call i32 @remove_wait_queue(i32* %195, i32* @wait)
  %197 = load i8*, i8** %10, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = load i64, i64* %9, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %191
  %205 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %206 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %211 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %212 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %211, i32 0, i32 0
  %213 = call i32 @set_bit(i32 %210, i32* %212)
  br label %214

214:                                              ; preds = %209, %204, %191
  %215 = load i8*, i8** %10, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  br label %230

227:                                              ; preds = %214
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  br label %230

230:                                              ; preds = %227, %221
  %231 = phi i64 [ %226, %221 ], [ %229, %227 ]
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %230, %34
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i64 @L_TOSTOP(%struct.tty_struct*) #1

declare dso_local i32 @tty_check_change(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i64 @O_OPOST(%struct.tty_struct*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @process_output_block(%struct.tty_struct*, i8*, i64) #1

declare dso_local i64 @process_output(i32, %struct.tty_struct*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
