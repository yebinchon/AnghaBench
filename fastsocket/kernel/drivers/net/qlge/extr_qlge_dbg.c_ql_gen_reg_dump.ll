; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_gen_reg_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_gen_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32 }
%struct.ql_reg_dump = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@MPI_COREDUMP_COOKIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MPI Coredump\00", align 1
@MISC_NIC_INFO_SEG_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"MISC NIC INFO\00", align 1
@NIC1_CONTROL_SEG_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"NIC Registers\00", align 1
@INTR_STATES_SEG_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"INTR States\00", align 1
@CAM_ENTRIES_SEG_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"CAM Entries\00", align 1
@ROUTING_WORDS_SEG_NUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Routing Words\00", align 1
@ETS_SEG_NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"ETS Registers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_gen_reg_dump(%struct.ql_adapter* %0, %struct.ql_reg_dump* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.ql_reg_dump*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.ql_reg_dump* %1, %struct.ql_reg_dump** %4, align 8
  %7 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %8 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %7, i32 0, i32 12
  %9 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 4)
  %10 = load i32, i32* @MPI_COREDUMP_COOKIE, align 4
  %11 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %12 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %11, i32 0, i32 12
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %15 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %18 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %17, i32 0, i32 12
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 112, i32* %19, align 4
  %20 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %21 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %20, i32 0, i32 12
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %26 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %25, i32 0, i32 11
  %27 = load i32, i32* @MISC_NIC_INFO_SEG_NUM, align 4
  %28 = call i32 @ql_build_coredump_seg_header(i32* %26, i32 %27, i32 20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %33 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %39 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %45 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %51 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %50, i32 0, i32 10
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %54 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %53, i32 0, i32 9
  %55 = load i32, i32* @NIC1_CONTROL_SEG_NUM, align 4
  %56 = call i32 @ql_build_coredump_seg_header(i32* %54, i32 %55, i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %73, %2
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ql_read32(%struct.ql_adapter* %61, i32 %65)
  %67 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %68 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %78 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %77, i32 0, i32 7
  %79 = load i32, i32* @INTR_STATES_SEG_NUM, align 4
  %80 = call i32 @ql_build_coredump_seg_header(i32* %78, i32 %79, i32 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %82 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %83 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = call i32 @ql_get_intr_states(%struct.ql_adapter* %81, i32* %85)
  %87 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %88 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %87, i32 0, i32 5
  %89 = load i32, i32* @CAM_ENTRIES_SEG_NUM, align 4
  %90 = call i32 @ql_build_coredump_seg_header(i32* %88, i32 %89, i32 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %92 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %93 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = call i32 @ql_get_cam_entries(%struct.ql_adapter* %91, i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %76
  br label %128

100:                                              ; preds = %76
  %101 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %102 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %101, i32 0, i32 3
  %103 = load i32, i32* @ROUTING_WORDS_SEG_NUM, align 4
  %104 = call i32 @ql_build_coredump_seg_header(i32* %102, i32 %103, i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %106 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %107 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = call i32 @ql_get_routing_entries(%struct.ql_adapter* %105, i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %128

114:                                              ; preds = %100
  %115 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %116 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %115, i32 0, i32 1
  %117 = load i32, i32* @ETS_SEG_NUM, align 4
  %118 = call i32 @ql_build_coredump_seg_header(i32* %116, i32 %117, i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %120 = load %struct.ql_reg_dump*, %struct.ql_reg_dump** %4, align 8
  %121 = getelementptr inbounds %struct.ql_reg_dump, %struct.ql_reg_dump* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = call i32 @ql_get_ets_regs(%struct.ql_adapter* %119, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %99, %113, %127, %114
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ql_build_coredump_seg_header(i32*, i32, i32, i8*) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_get_intr_states(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @ql_get_cam_entries(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @ql_get_routing_entries(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @ql_get_ets_regs(%struct.ql_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
