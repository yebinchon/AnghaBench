; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.TYPE_2__, i32, i64, i64, %struct.slgt_info* }
%struct.TYPE_2__ = type { i32, i32, %struct.tty_struct*, i32 }
%struct.tty_struct = type { i32, i32, i32, %struct.slgt_info*, i32 }
%struct.file = type { i32 }

@slgt_device_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: open with invalid line #%d.\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@slgt_device_list = common dso_local global %struct.slgt_info* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s init error=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s open, old ref count = %d\0A\00", align 1
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ASYNC_LOW_LATENCY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s block_til_ready rc=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s open rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.slgt_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @slgt_device_count, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @driver_name, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DBGERR(i8* %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %231

27:                                               ; preds = %15
  %28 = load %struct.slgt_info*, %struct.slgt_info** @slgt_device_list, align 8
  store %struct.slgt_info* %28, %struct.slgt_info** %6, align 8
  br label %29

29:                                               ; preds = %40, %27
  %30 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %31 = icmp ne %struct.slgt_info* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %35, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %42 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %41, i32 0, i32 6
  %43 = load %struct.slgt_info*, %struct.slgt_info** %42, align 8
  store %struct.slgt_info* %43, %struct.slgt_info** %6, align 8
  br label %29

44:                                               ; preds = %38
  %45 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @sanity_check(%struct.slgt_info* %45, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %231

54:                                               ; preds = %44
  %55 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %64 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @DBGERR(i8* %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %231

70:                                               ; preds = %54
  %71 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %72, i32 0, i32 3
  store %struct.slgt_info* %71, %struct.slgt_info** %73, align 8
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %76 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store %struct.tty_struct* %74, %struct.tty_struct** %77, align 8
  %78 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %82 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @DBGINFO(i8* %86)
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = call i64 @tty_hung_up_p(%struct.file* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %70
  %92 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %93 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ASYNC_CLOSING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %91, %70
  %100 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %101 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ASYNC_CLOSING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %109 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = call i32 @interruptible_sleep_on(i32* %110)
  br label %112

112:                                              ; preds = %107, %99
  %113 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %114 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ASYNC_HUP_NOTIFY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  br label %126

123:                                              ; preds = %112
  %124 = load i32, i32* @ERESTARTSYS, align 4
  %125 = sub nsw i32 0, %124
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i32 [ %122, %120 ], [ %125, %123 ]
  store i32 %127, i32* %7, align 4
  br label %197

128:                                              ; preds = %91
  %129 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %130 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @ASYNC_LOW_LATENCY, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 0
  %139 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %140 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load %struct.tty_struct*, %struct.tty_struct** %141, align 8
  %143 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %142, i32 0, i32 1
  store i32 %138, i32* %143, align 4
  %144 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %145 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %144, i32 0, i32 3
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %149 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %128
  %153 = load i32, i32* @EBUSY, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  %155 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %156 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %155, i32 0, i32 3
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  br label %197

159:                                              ; preds = %128
  %160 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %161 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %166 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %165, i32 0, i32 3
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %170 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %159
  %175 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %176 = call i32 @startup(%struct.slgt_info* %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %197

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %159
  %182 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %183 = load %struct.file*, %struct.file** %5, align 8
  %184 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %185 = call i32 @block_til_ready(%struct.tty_struct* %182, %struct.file* %183, %struct.slgt_info* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %181
  %189 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %190 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = call i32 @DBGINFO(i8* %194)
  br label %197

196:                                              ; preds = %181
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %196, %188, %179, %152, %126
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %197
  %201 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %202 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %207 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  store %struct.tty_struct* null, %struct.tty_struct** %208, align 8
  br label %209

209:                                              ; preds = %205, %200
  %210 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %211 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %217 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %209
  br label %222

222:                                              ; preds = %221, %197
  %223 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %224 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = call i32 @DBGINFO(i8* %228)
  %230 = load i32, i32* %7, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %222, %59, %51, %19
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @startup(%struct.slgt_info*) #1

declare dso_local i32 @block_til_ready(%struct.tty_struct*, %struct.file*, %struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
