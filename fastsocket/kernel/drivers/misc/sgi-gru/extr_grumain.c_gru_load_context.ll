; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_load_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_load_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32, i64, i64, i64, i32, i32, %struct.gru_state*, i32, i32, i32 }
%struct.gru_state = type { i32, i32 }
%struct.gru_context_configuration_handle = type { i32, i32, i32, i64, i32, i32, i32, i32*, i32*, i64, i32, i32 }

@GRU_OPT_MISS_FMM_POLL = common dso_local global i64 0, align 8
@GRU_OPT_MISS_FMM_INTR = common dso_local global i64 0, align 8
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"err %d: cch %p, gts %p, cbr 0x%lx, dsr 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"gid %d, gts %p, cbrmap 0x%lx, dsrmap 0x%lx, tie %d, tis %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_load_context(%struct.gru_thread_state* %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca %struct.gru_state*, align 8
  %4 = alloca %struct.gru_context_configuration_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %2, align 8
  %9 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %10 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %9, i32 0, i32 6
  %11 = load %struct.gru_state*, %struct.gru_state** %10, align 8
  store %struct.gru_state* %11, %struct.gru_state** %3, align 8
  %12 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %13 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %16 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.gru_context_configuration_handle* @get_cch(i32 %17, i32 %18)
  store %struct.gru_context_configuration_handle* %19, %struct.gru_context_configuration_handle** %4, align 8
  %20 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %21 = call i32 @lock_cch_handle(%struct.gru_context_configuration_handle* %20)
  %22 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %23 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GRU_OPT_MISS_FMM_POLL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %29 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GRU_OPT_MISS_FMM_INTR, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %1
  %34 = phi i1 [ true, %1 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %37 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %39 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GRU_OPT_MISS_FMM_INTR, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %45 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %47 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %33
  %51 = call i64 (...) @gru_cpu_fault_map_id()
  %52 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %53 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %55 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %58 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %57, i32 0, i32 9
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %33
  %60 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %61 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %66 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %68 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %71 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  br label %75

72:                                               ; preds = %59
  %73 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %74 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %64
  %76 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %77 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %76, i32 0, i32 4
  store i32 0, i32* %77, align 8
  %78 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %79 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %82 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 4
  %83 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %84 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %87 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  %88 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %89 = call i64 @is_kernel_context(%struct.gru_thread_state* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %75
  %92 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %93 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %92, i32 0, i32 5
  store i32 1, i32* %93, align 4
  %94 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %95 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  %96 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %97 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %96, i32 0, i32 6
  store i32 1, i32* %97, align 8
  %98 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %99 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %98, i32 0, i32 9
  store i64 0, i64* %99, align 8
  br label %136

100:                                              ; preds = %75
  %101 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %102 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %101, i32 0, i32 5
  store i32 0, i32* %102, align 4
  %103 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %104 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %103, i32 0, i32 4
  store i32 0, i32* %104, align 8
  %105 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %106 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %105, i32 0, i32 6
  store i32 0, i32* %106, align 8
  %107 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %108 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %109 = call i32 @gru_load_mm_tracker(%struct.gru_state* %107, %struct.gru_thread_state* %108)
  store i32 %109, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %132, %100
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %118 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %124 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %127 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %126, i32 0, i32 8
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %113
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %110

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135, %91
  %137 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %138 = call i32 @cch_allocate(%struct.gru_context_configuration_handle* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load i32, i32* @grudev, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %145 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %146 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %147 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %150 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, i32, ...) @gru_dbg(i32 %142, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %143, %struct.gru_context_configuration_handle* %144, %struct.gru_thread_state* %145, i32 %148, i32 %151)
  %153 = call i32 (...) @BUG()
  br label %154

154:                                              ; preds = %141, %136
  %155 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %156 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %159 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %163 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %166 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %169 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @gru_load_context_data(i32 %157, i32 %160, i32 %161, i32 %164, i32 %167, i32 %170)
  %172 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %173 = call i64 @cch_start(%struct.gru_context_configuration_handle* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %154
  %176 = call i32 (...) @BUG()
  br label %177

177:                                              ; preds = %175, %154
  %178 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %4, align 8
  %179 = call i32 @unlock_cch_handle(%struct.gru_context_configuration_handle* %178)
  %180 = load i32, i32* @grudev, align 4
  %181 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %182 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %181, i32 0, i32 6
  %183 = load %struct.gru_state*, %struct.gru_state** %182, align 8
  %184 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %187 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %188 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %191 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %194 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @GRU_OPT_MISS_FMM_INTR, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %200 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (i32, i8*, i32, ...) @gru_dbg(i32 %180, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %185, %struct.gru_thread_state* %186, i32 %189, i32 %192, i32 %198, i64 %201)
  ret void
}

declare dso_local %struct.gru_context_configuration_handle* @get_cch(i32, i32) #1

declare dso_local i32 @lock_cch_handle(%struct.gru_context_configuration_handle*) #1

declare dso_local i64 @gru_cpu_fault_map_id(...) #1

declare dso_local i64 @is_kernel_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_load_mm_tracker(%struct.gru_state*, %struct.gru_thread_state*) #1

declare dso_local i32 @cch_allocate(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @gru_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @gru_load_context_data(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cch_start(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @unlock_cch_handle(%struct.gru_context_configuration_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
