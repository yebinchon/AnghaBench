; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_get_mdl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_get_mdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_mdl = type { i64, i64, i32 }
%struct.cx18_stream = type { i64, i32, i32, %struct.TYPE_4__, i32, %struct.cx18* }
%struct.TYPE_4__ = type { i32 }
%struct.cx18 = type { %struct.TYPE_3__, i64, %struct.cx18_stream* }
%struct.TYPE_3__ = type { %struct.cx18_mdl }

@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@CX18_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@CX18_F_S_APPL_IO = common dso_local global i32 0, align 4
@CX18_F_M_NEED_SWAP = common dso_local global i32 0, align 4
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"EOS %s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"User stopped %s\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cx18_mdl* (%struct.cx18_stream*, i32, i32*)* @cx18_get_mdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cx18_mdl* @cx18_get_mdl(%struct.cx18_stream* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cx18_mdl*, align 8
  %5 = alloca %struct.cx18_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.cx18_stream*, align 8
  %10 = alloca %struct.cx18_mdl*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %12 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %11, i32 0, i32 5
  %13 = load %struct.cx18*, %struct.cx18** %12, align 8
  store %struct.cx18* %13, %struct.cx18** %8, align 8
  %14 = load %struct.cx18*, %struct.cx18** %8, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 2
  %16 = load %struct.cx18_stream*, %struct.cx18_stream** %15, align 8
  %17 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %18 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %16, i64 %17
  store %struct.cx18_stream* %18, %struct.cx18_stream** %9, align 8
  %19 = load i32, i32* @wait, align 4
  %20 = call i32 @DEFINE_WAIT(i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %3, %165
  %23 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %24 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %22
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.cx18*, %struct.cx18** %8, align 8
  %31 = getelementptr inbounds %struct.cx18, %struct.cx18* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @msecs_to_jiffies(i32 1000)
  %34 = add nsw i64 %32, %33
  %35 = call i64 @time_after(i64 %29, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.cx18*, %struct.cx18** %8, align 8
  %40 = getelementptr inbounds %struct.cx18, %struct.cx18* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.cx18*, %struct.cx18** %8, align 8
  %42 = call i32 @cx18_dualwatch(%struct.cx18* %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %45 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %46 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %45, i32 0, i32 4
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i32, i32* @CX18_F_S_APPL_IO, align 4
  %51 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %52 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %51, i32 0, i32 4
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %62, %55
  %57 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %58 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %59 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %58, i32 0, i32 3
  %60 = call %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream* %57, %struct.TYPE_4__* %59)
  store %struct.cx18_mdl* %60, %struct.cx18_mdl** %10, align 8
  %61 = icmp ne %struct.cx18_mdl* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.cx18*, %struct.cx18** %8, align 8
  %64 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %65 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %66 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @cx18_process_vbi_data(%struct.cx18* %63, %struct.cx18_mdl* %64, i64 %67)
  %69 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %70 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %71 = call i32 @cx18_stream_put_mdl_fw(%struct.cx18_stream* %69, %struct.cx18_mdl* %70)
  br label %56

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %49, %43
  %74 = load %struct.cx18*, %struct.cx18** %8, align 8
  %75 = getelementptr inbounds %struct.cx18, %struct.cx18* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store %struct.cx18_mdl* %76, %struct.cx18_mdl** %10, align 8
  %77 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %78 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %81 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  store %struct.cx18_mdl* %85, %struct.cx18_mdl** %4, align 8
  br label %166

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %22
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %89 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %90 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %89, i32 0, i32 3
  %91 = call %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream* %88, %struct.TYPE_4__* %90)
  store %struct.cx18_mdl* %91, %struct.cx18_mdl** %10, align 8
  %92 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %93 = icmp ne %struct.cx18_mdl* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %87
  %95 = load i32, i32* @CX18_F_M_NEED_SWAP, align 4
  %96 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %97 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %96, i32 0, i32 2
  %98 = call i32 @test_and_clear_bit(i32 %95, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  store %struct.cx18_mdl* %101, %struct.cx18_mdl** %4, align 8
  br label %166

102:                                              ; preds = %94
  %103 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %104 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %110 = call i32 @cx18_mdl_swap(%struct.cx18_mdl* %109)
  br label %118

111:                                              ; preds = %102
  %112 = load %struct.cx18*, %struct.cx18** %8, align 8
  %113 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  %114 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %115 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @cx18_process_vbi_data(%struct.cx18* %112, %struct.cx18_mdl* %113, i64 %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load %struct.cx18_mdl*, %struct.cx18_mdl** %10, align 8
  store %struct.cx18_mdl* %119, %struct.cx18_mdl** %4, align 8
  br label %166

120:                                              ; preds = %87
  %121 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %122 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %123 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %122, i32 0, i32 4
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %120
  %127 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %128 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %129)
  store %struct.cx18_mdl* null, %struct.cx18_mdl** %4, align 8
  br label %166

131:                                              ; preds = %120
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = sub nsw i32 0, %135
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  store %struct.cx18_mdl* null, %struct.cx18_mdl** %4, align 8
  br label %166

138:                                              ; preds = %131
  %139 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %140 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %139, i32 0, i32 2
  %141 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %142 = call i32 @prepare_to_wait(i32* %140, i32* @wait, i32 %141)
  %143 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %144 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i32 @atomic_read(i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %138
  %149 = call i32 (...) @schedule()
  br label %150

150:                                              ; preds = %148, %138
  %151 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %152 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %151, i32 0, i32 2
  %153 = call i32 @finish_wait(i32* %152, i32* @wait)
  %154 = load i32, i32* @current, align 4
  %155 = call i64 @signal_pending(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %159 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @EINTR, align 4
  %163 = sub nsw i32 0, %162
  %164 = load i32*, i32** %7, align 8
  store i32 %163, i32* %164, align 4
  store %struct.cx18_mdl* null, %struct.cx18_mdl** %4, align 8
  br label %166

165:                                              ; preds = %150
  br label %22

166:                                              ; preds = %157, %134, %126, %118, %100, %84
  %167 = load %struct.cx18_mdl*, %struct.cx18_mdl** %4, align 8
  ret %struct.cx18_mdl* %167
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cx18_dualwatch(%struct.cx18*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream*, %struct.TYPE_4__*) #1

declare dso_local i32 @cx18_process_vbi_data(%struct.cx18*, %struct.cx18_mdl*, i64) #1

declare dso_local i32 @cx18_stream_put_mdl_fw(%struct.cx18_stream*, %struct.cx18_mdl*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_mdl_swap(%struct.cx18_mdl*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
