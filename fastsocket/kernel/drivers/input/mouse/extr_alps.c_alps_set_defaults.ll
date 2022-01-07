; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_set_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i8*, i32 }

@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@alps_hw_init_v1_v2 = common dso_local global i32 0, align 4
@alps_process_packet_v1_v2 = common dso_local global i8* null, align 8
@alps_set_abs_params_st = common dso_local global i8* null, align 8
@alps_hw_init_v3 = common dso_local global i32 0, align 4
@alps_process_packet_v3 = common dso_local global i8* null, align 8
@alps_set_abs_params_mt = common dso_local global i8* null, align 8
@alps_decode_pinnacle = common dso_local global i32 0, align 4
@alps_v3_nibble_commands = common dso_local global i8* null, align 8
@PSMOUSE_CMD_RESET_WRAP = common dso_local global i8* null, align 8
@alps_hw_init_v4 = common dso_local global i32 0, align 4
@alps_process_packet_v4 = common dso_local global i8* null, align 8
@alps_v4_nibble_commands = common dso_local global i8* null, align 8
@PSMOUSE_CMD_DISABLE = common dso_local global i8* null, align 8
@alps_hw_init_dolphin_v1 = common dso_local global i32 0, align 4
@alps_decode_dolphin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alps_data*)* @alps_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_set_defaults(%struct.alps_data* %0) #0 {
  %2 = alloca %struct.alps_data*, align 8
  store %struct.alps_data* %0, %struct.alps_data** %2, align 8
  %3 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %4 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %3, i32 0, i32 0
  store i32 143, i32* %4, align 8
  %5 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %6 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %5, i32 0, i32 1
  store i32 143, i32* %6, align 4
  %7 = load i32, i32* @ALPS_DUALPOINT, align 4
  %8 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %9 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %11 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %10, i32 0, i32 2
  store i32 2000, i32* %11, align 8
  %12 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %13 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %12, i32 0, i32 3
  store i32 1400, i32* %13, align 4
  %14 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %15 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %91 [
    i32 132, label %17
    i32 131, label %17
    i32 130, label %27
    i32 129, label %46
    i32 128, label %62
  ]

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @alps_hw_init_v1_v2, align 4
  %19 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %20 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @alps_process_packet_v1_v2, align 8
  %22 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %23 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @alps_set_abs_params_st, align 8
  %25 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %26 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  br label %91

27:                                               ; preds = %1
  %28 = load i32, i32* @alps_hw_init_v3, align 4
  %29 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %30 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** @alps_process_packet_v3, align 8
  %32 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %33 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @alps_set_abs_params_mt, align 8
  %35 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %36 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @alps_decode_pinnacle, align 4
  %38 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %39 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %41 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %42 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %44 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %45 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  br label %91

46:                                               ; preds = %1
  %47 = load i32, i32* @alps_hw_init_v4, align 4
  %48 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %49 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @alps_process_packet_v4, align 8
  %51 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %52 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @alps_set_abs_params_mt, align 8
  %54 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %55 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @alps_v4_nibble_commands, align 8
  %57 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %58 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @PSMOUSE_CMD_DISABLE, align 8
  %60 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %61 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  br label %91

62:                                               ; preds = %1
  %63 = load i32, i32* @alps_hw_init_dolphin_v1, align 4
  %64 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %65 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @alps_process_packet_v3, align 8
  %67 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %68 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %67, i32 0, i32 10
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @alps_decode_dolphin, align 4
  %70 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %71 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** @alps_set_abs_params_mt, align 8
  %73 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %74 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @alps_v3_nibble_commands, align 8
  %76 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %77 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @PSMOUSE_CMD_RESET_WRAP, align 8
  %79 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %80 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %82 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %81, i32 0, i32 0
  store i32 200, i32* %82, align 8
  %83 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %84 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %83, i32 0, i32 1
  store i32 200, i32* %84, align 4
  %85 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %86 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %85, i32 0, i32 5
  store i32 0, i32* %86, align 4
  %87 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %88 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %87, i32 0, i32 2
  store i32 1360, i32* %88, align 8
  %89 = load %struct.alps_data*, %struct.alps_data** %2, align 8
  %90 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %89, i32 0, i32 3
  store i32 660, i32* %90, align 4
  br label %91

91:                                               ; preds = %1, %62, %46, %27, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
