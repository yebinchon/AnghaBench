; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_fcp_prio_cfg_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_fcp_prio_cfg_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_fcp_prio_cfg = type { i32, %struct.qla_fcp_prio_entry* }
%struct.qla_fcp_prio_entry = type { i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No FCP Priority config data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid FCP Priority data header. bcode=0x%x.\0A\00", align 1
@FCP_PRIO_ENTRY_TAG_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"No valid FCP Priority data entries.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Valid FCP priority data. num entries = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_fcp_prio_cfg_valid(i32* %0, %struct.qla_fcp_prio_cfg* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qla_fcp_prio_cfg*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qla_fcp_prio_entry*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.qla_fcp_prio_cfg* %1, %struct.qla_fcp_prio_cfg** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.qla_fcp_prio_cfg*, %struct.qla_fcp_prio_cfg** %6, align 8
  %16 = bitcast %struct.qla_fcp_prio_cfg* %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load %struct.qla_fcp_prio_cfg*, %struct.qla_fcp_prio_cfg** %6, align 8
  %18 = bitcast %struct.qla_fcp_prio_cfg* %17 to i32*
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ql_dbg_user, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %24, i32* %25, i32 28753, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %103

27:                                               ; preds = %3
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 72
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 81
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 79
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 83
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %39, %33, %27
  %52 = load i32, i32* @ql_dbg_user, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %52, i32* %53, i32 28754, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 0, i32* %4, align 4
  br label %103

56:                                               ; preds = %45
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %103

62:                                               ; preds = %56
  %63 = load %struct.qla_fcp_prio_cfg*, %struct.qla_fcp_prio_cfg** %6, align 8
  %64 = getelementptr inbounds %struct.qla_fcp_prio_cfg, %struct.qla_fcp_prio_cfg* %63, i32 0, i32 1
  %65 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %64, align 8
  %66 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %65, i64 0
  store %struct.qla_fcp_prio_entry* %66, %struct.qla_fcp_prio_entry** %12, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %86, %62
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.qla_fcp_prio_cfg*, %struct.qla_fcp_prio_cfg** %6, align 8
  %70 = getelementptr inbounds %struct.qla_fcp_prio_cfg, %struct.qla_fcp_prio_cfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %12, align 8
  %75 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FCP_PRIO_ENTRY_TAG_VALID, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.qla_fcp_prio_entry*, %struct.qla_fcp_prio_entry** %12, align 8
  %85 = getelementptr inbounds %struct.qla_fcp_prio_entry, %struct.qla_fcp_prio_entry* %84, i32 1
  store %struct.qla_fcp_prio_entry* %85, %struct.qla_fcp_prio_entry** %12, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %67

89:                                               ; preds = %67
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* @ql_dbg_user, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %93, i32* %94, i32 28755, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @ql_dbg_user, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %97, i32* %98, i32 28756, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %60, %51, %23
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
