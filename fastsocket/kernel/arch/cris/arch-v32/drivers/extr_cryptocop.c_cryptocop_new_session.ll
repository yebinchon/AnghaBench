; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_new_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_new_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_session = type { i32, %struct.cryptocop_session*, %struct.cryptocop_session*, i64, i32 }
%struct.cryptocop_transform_init = type { i64, %struct.cryptocop_transform_init* }

@.str = private unnamed_addr constant [38 x i8] c"cryptocop_new_session, bad transform\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"cryptocop_new_session, no transforms specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"cryptocop_new_session, kmalloc cryptocop_session\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"cryptocop_new_session, kmalloc cryptocop_transform_ctx\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cryptocop_new_session, duplicate transform ids\0A\00", align 1
@cryptocop_sessions_lock = common dso_local global i32 0, align 4
@next_sid = common dso_local global i32 0, align 4
@cryptocop_sessions = common dso_local global %struct.cryptocop_session* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cryptocop_new_session(i32* %0, %struct.cryptocop_transform_init* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cryptocop_transform_init*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cryptocop_session*, align 8
  %9 = alloca %struct.cryptocop_transform_init*, align 8
  %10 = alloca %struct.cryptocop_transform_init*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.cryptocop_transform_init* %1, %struct.cryptocop_transform_init** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %6, align 8
  store %struct.cryptocop_transform_init* %15, %struct.cryptocop_transform_init** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = call i32 (...) @init_stream_coprocessor()
  br label %17

17:                                               ; preds = %30, %3
  %18 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %19 = icmp ne %struct.cryptocop_transform_init* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %24 = call i32 @transform_ok(%struct.cryptocop_transform_init* %23)
  store i32 %24, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @DEBUG_API(i32 %27)
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %4, align 4
  br label %177

30:                                               ; preds = %20
  %31 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %32 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %31, i32 0, i32 1
  %33 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %32, align 8
  store %struct.cryptocop_transform_init* %33, %struct.cryptocop_transform_init** %9, align 8
  br label %17

34:                                               ; preds = %17
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 0, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @DEBUG_API(i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %177

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @kmalloc(i32 40, i32 %43)
  %45 = bitcast i8* %44 to %struct.cryptocop_session*
  store %struct.cryptocop_session* %45, %struct.cryptocop_session** %8, align 8
  %46 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %47 = icmp ne %struct.cryptocop_session* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @DEBUG_API(i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %177

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @kmalloc(i32 %57, i32 %58)
  %60 = bitcast i8* %59 to %struct.cryptocop_session*
  %61 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %62 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %61, i32 0, i32 2
  store %struct.cryptocop_session* %60, %struct.cryptocop_session** %62, align 8
  %63 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %64 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %63, i32 0, i32 2
  %65 = load %struct.cryptocop_session*, %struct.cryptocop_session** %64, align 8
  %66 = icmp ne %struct.cryptocop_session* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %53
  %68 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 @DEBUG_API(i32 %68)
  %70 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %71 = call i32 @kfree(%struct.cryptocop_session* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %177

74:                                               ; preds = %53
  %75 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %6, align 8
  store %struct.cryptocop_transform_init* %75, %struct.cryptocop_transform_init** %9, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %144, %74
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %147

80:                                               ; preds = %76
  %81 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %82 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %81, i32 0, i32 1
  %83 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %82, align 8
  store %struct.cryptocop_transform_init* %83, %struct.cryptocop_transform_init** %10, align 8
  br label %84

84:                                               ; preds = %106, %80
  %85 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %10, align 8
  %86 = icmp ne %struct.cryptocop_transform_init* %85, null
  br i1 %86, label %87, label %110

87:                                               ; preds = %84
  %88 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %10, align 8
  %89 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %92 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @DEBUG_API(i32 %96)
  %98 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %99 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %98, i32 0, i32 2
  %100 = load %struct.cryptocop_session*, %struct.cryptocop_session** %99, align 8
  %101 = call i32 @kfree(%struct.cryptocop_session* %100)
  %102 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %103 = call i32 @kfree(%struct.cryptocop_session* %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %177

106:                                              ; preds = %87
  %107 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %10, align 8
  %108 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %107, i32 0, i32 1
  %109 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %108, align 8
  store %struct.cryptocop_transform_init* %109, %struct.cryptocop_transform_init** %10, align 8
  br label %84

110:                                              ; preds = %84
  %111 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %112 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %111, i32 0, i32 2
  %113 = load %struct.cryptocop_session*, %struct.cryptocop_session** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %113, i64 %115
  %117 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %116, i32 0, i32 4
  %118 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %119 = call i32 @memcpy(i32* %117, %struct.cryptocop_transform_init* %118, i32 16)
  %120 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %121 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %120, i32 0, i32 2
  %122 = load %struct.cryptocop_session*, %struct.cryptocop_session** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %122, i64 %124
  %126 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %128 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %127, i32 0, i32 2
  %129 = load %struct.cryptocop_session*, %struct.cryptocop_session** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %129, i64 %131
  %133 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %132, i64 1
  %134 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %135 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %134, i32 0, i32 2
  %136 = load %struct.cryptocop_session*, %struct.cryptocop_session** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %136, i64 %138
  %140 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %139, i32 0, i32 1
  store %struct.cryptocop_session* %133, %struct.cryptocop_session** %140, align 8
  %141 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %9, align 8
  %142 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %141, i32 0, i32 1
  %143 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %142, align 8
  store %struct.cryptocop_transform_init* %143, %struct.cryptocop_transform_init** %9, align 8
  br label %144

144:                                              ; preds = %110
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %76

147:                                              ; preds = %76
  %148 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %149 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %148, i32 0, i32 2
  %150 = load %struct.cryptocop_session*, %struct.cryptocop_session** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %150, i64 %153
  %155 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %154, i32 0, i32 1
  store %struct.cryptocop_session* null, %struct.cryptocop_session** %155, align 8
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @spin_lock_irqsave(i32* @cryptocop_sessions_lock, i64 %156)
  %158 = load i32, i32* @next_sid, align 4
  %159 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %160 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @next_sid, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @next_sid, align 4
  %163 = load i32, i32* @next_sid, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  store i32 1, i32* @next_sid, align 4
  br label %166

166:                                              ; preds = %165, %147
  %167 = load %struct.cryptocop_session*, %struct.cryptocop_session** @cryptocop_sessions, align 8
  %168 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %169 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %168, i32 0, i32 1
  store %struct.cryptocop_session* %167, %struct.cryptocop_session** %169, align 8
  %170 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  store %struct.cryptocop_session* %170, %struct.cryptocop_session** @cryptocop_sessions, align 8
  %171 = load i64, i64* %13, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* @cryptocop_sessions_lock, i64 %171)
  %173 = load %struct.cryptocop_session*, %struct.cryptocop_session** %8, align 8
  %174 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %5, align 8
  store i32 %175, i32* %176, align 4
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %166, %95, %67, %48, %37, %26
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @init_stream_coprocessor(...) #1

declare dso_local i32 @transform_ok(%struct.cryptocop_transform_init*) #1

declare dso_local i32 @DEBUG_API(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cryptocop_session*) #1

declare dso_local i32 @memcpy(i32*, %struct.cryptocop_transform_init*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
