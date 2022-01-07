; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_boardname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_boardname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@DUAL_PORT_CAP = common dso_local global i32 0, align 4
@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"InfiniPath_QLE7342_Emulation\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7340\00", align 1
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@PORT_SPD_CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7342\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"InfiniPath_QMI7342\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"InfiniPath_Unsupported7342\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported version of QMH7342\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"InfiniPath_QMH7342\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"InfiniPath_QME7342\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"InfiniPath_QME7362\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"InfiniPath_QLE7342_TEST\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"InfiniPath_QLE73xy_UNKNOWN\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Unknown 7322 board type %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Failed allocation for board name: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\0A\00", align 1
@QIB_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@QIB_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@Revision_R = common dso_local global i32 0, align 4
@Arch = common dso_local global i32 0, align 4
@SW = common dso_local global i32 0, align 4
@qib_singleport = common dso_local global i64 0, align 8
@PORT_SPD_CAP_SHIFT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [54 x i8] c"IB%u: Forced to single port mode by module parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_7322_boardname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322_boardname(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %7 = load i32, i32* @DUAL_PORT_CAP, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @Revision, align 4
  %12 = load i32, i32* @BoardID, align 4
  %13 = call i32 @SYM_FIELD(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %47 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %23
    i32 3, label %29
    i32 4, label %30
    i32 128, label %33
    i32 129, label %34
    i32 8, label %35
    i32 15, label %41
  ]

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %51

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %17 = load i32, i32* @QIB_HAS_QSFP, align 4
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @PORT_SPD_CAP, align 4
  store i32 %22, i32* %6, align 4
  br label %51

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %24 = load i32, i32* @QIB_HAS_QSFP, align 4
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %51

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %51

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %51

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  store i32 36, i32* %6, align 4
  br label %51

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %51

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  %36 = load i32, i32* @QIB_HAS_QSFP, align 4
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %51

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  %42 = load i32, i32* @QIB_HAS_QSFP, align 4
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %51

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %41, %35, %34, %33, %30, %29, %23, %16, %15
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kmalloc(i32 %57, i32 %58)
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %51
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %68)
  br label %77

70:                                               ; preds = %51
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %70, %66
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load i32, i32* @QIB_CHIP_VERS_MAJ, align 4
  %84 = load i32, i32* @QIB_CHIP_VERS_MIN, align 4
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %86 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @Revision_R, align 4
  %92 = load i32, i32* @Arch, align 4
  %93 = call i32 @SYM_FIELD(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %95 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %98 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @Revision_R, align 4
  %104 = load i32, i32* @SW, align 4
  %105 = call i32 @SYM_FIELD(i32 %102, i32 %103, i32 %104)
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %82, i32 4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %83, i32 %84, i8* %87, i32 %93, i32 %96, i32 %99, i32 %105)
  %107 = load i64, i64* @qib_singleport, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %77
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @PORT_SPD_CAP_SHIFT, align 4
  %112 = lshr i32 %110, %111
  %113 = load i32, i32* @PORT_SPD_CAP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %121 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @qib_devinfo(i32 %119, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @PORT_SPD_CAP, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %116, %109, %77
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
