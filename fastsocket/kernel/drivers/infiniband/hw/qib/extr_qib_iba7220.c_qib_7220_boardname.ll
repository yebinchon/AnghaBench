; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_boardname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_boardname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i8*, i32, i32, i32, i32 }

@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7240\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7280\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown 7220 board with ID %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unknown_InfiniPath_7220\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed allocation for board name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Unsupported InfiniPath hardware revision %u.%u!\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\0A\00", align 1
@QIB_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@QIB_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@Revision_R = common dso_local global i32 0, align 4
@Arch = common dso_local global i32 0, align 4
@SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7220_boardname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_boardname(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @Revision, align 4
  %10 = load i32, i32* @BoardID, align 4
  %11 = call i32 @SYM_FIELD(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %15 [
    i32 1, label %13
    i32 2, label %14
  ]

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %19

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %19

19:                                               ; preds = %15, %14, %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  br label %43

36:                                               ; preds = %19
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %36, %32
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 5
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %67

58:                                               ; preds = %53, %48, %43
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* @QIB_CHIP_VERS_MAJ, align 4
  %74 = load i32, i32* @QIB_CHIP_VERS_MIN, align 4
  %75 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %76 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @Revision_R, align 4
  %82 = load i32, i32* @Arch, align 4
  %83 = call i32 @SYM_FIELD(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @Revision_R, align 4
  %94 = load i32, i32* @SW, align 4
  %95 = call i32 @SYM_FIELD(i32 %92, i32 %93, i32 %94)
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %73, i32 %74, i8* %77, i32 %83, i32 %86, i32 %89, i32 %95)
  ret void
}

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
