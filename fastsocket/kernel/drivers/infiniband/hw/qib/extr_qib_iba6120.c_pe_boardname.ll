; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pe_boardname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pe_boardname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i8*, i32, i32, i32, i32 }

@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7140\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown 6120 board with ID %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown_InfiniPath_6120\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed allocation for board name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Unsupported InfiniPath hardware revision %u.%u!\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\0A\00", align 1
@QIB_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@QIB_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@Revision_R = common dso_local global i32 0, align 4
@Arch = common dso_local global i32 0, align 4
@SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @pe_boardname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pe_boardname(%struct.qib_devdata* %0) #0 {
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
  switch i32 %12, label %14 [
    i32 2, label %13
  ]

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %42

35:                                               ; preds = %18
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %66

57:                                               ; preds = %52, %47, %42
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* @QIB_CHIP_VERS_MAJ, align 4
  %73 = load i32, i32* @QIB_CHIP_VERS_MIN, align 4
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @Revision_R, align 4
  %81 = load i32, i32* @Arch, align 4
  %82 = call i32 @SYM_FIELD(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %87 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @Revision_R, align 4
  %93 = load i32, i32* @SW, align 4
  %94 = call i32 @SYM_FIELD(i32 %91, i32 %92, i32 %93)
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %71, i32 4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %73, i8* %76, i32 %82, i32 %85, i32 %88, i32 %94)
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
