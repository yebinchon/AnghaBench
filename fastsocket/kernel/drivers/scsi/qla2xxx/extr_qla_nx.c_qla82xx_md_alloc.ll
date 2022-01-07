; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32*, i64 }
%struct.qla82xx_md_template_hdr = type { i32, i64* }

@ql2xmdcapmask = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Forcing driver capture mask to firmware default capture mask: 0x%x.\0A\00", align 1
@QLA82XX_DEFAULT_CAP_MASK = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Firmware dump previously allocated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Unable to allocate memory for Minidump size (0x%x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_md_alloc(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla82xx_md_template_hdr*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %4, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qla82xx_md_template_hdr*
  store %struct.qla82xx_md_template_hdr* %14, %struct.qla82xx_md_template_hdr** %7, align 8
  %15 = load i32, i32* @ql2xmdcapmask, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ql2xmdcapmask, align 4
  %19 = icmp sgt i32 %18, 127
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %1
  %21 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  store i32 %24, i32* @ql2xmdcapmask, align 4
  %25 = load i32, i32* @ql_log_info, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load i32, i32* @ql2xmdcapmask, align 4
  %28 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %25, %struct.TYPE_4__* %26, i32 45125, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %20, %17
  store i32 2, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @QLA82XX_DEFAULT_CAP_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ql2xmdcapmask, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.qla82xx_md_template_hdr*, %struct.qla82xx_md_template_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.qla82xx_md_template_hdr, %struct.qla82xx_md_template_hdr* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  br label %54

54:                                               ; preds = %40, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @ql_log_warn, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %66, %struct.TYPE_4__* %67, i32 45126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %88

69:                                               ; preds = %60
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32* @vmalloc(i32 %72)
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load i32, i32* @ql_log_warn, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %81, %struct.TYPE_4__* %82, i32 45127, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 1, i32* %2, align 4
  br label %88

87:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %80, %65
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i32* @vmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
