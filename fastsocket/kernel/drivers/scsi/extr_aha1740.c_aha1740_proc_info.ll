; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha1740.c_aha1740_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha1740.c_aha1740_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i8*, i32 }
%struct.aha1740_hostdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"aha174x at IO:%lx, IRQ %d, SLOT %d.\0AExtended translation %sabled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @aha1740_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1740_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.aha1740_hostdata*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %65

21:                                               ; preds = %6
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %23 = call %struct.aha1740_hostdata* @HOSTDATA(%struct.Scsi_Host* %22)
  store %struct.aha1740_hostdata* %23, %struct.aha1740_hostdata** %15, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.aha1740_hostdata*, %struct.aha1740_hostdata** %15, align 8
  %32 = getelementptr inbounds %struct.aha1740_hostdata, %struct.aha1740_hostdata* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aha1740_hostdata*, %struct.aha1740_hostdata** %15, align 8
  %37 = getelementptr inbounds %struct.aha1740_hostdata, %struct.aha1740_hostdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30, i32 %35, i8* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %21
  %47 = load i8*, i8** %9, align 8
  %48 = load i8**, i8*** %10, align 8
  store i8* %47, i8** %48, align 8
  store i32 0, i32* %7, align 4
  br label %65

49:                                               ; preds = %21
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8**, i8*** %10, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %46, %18
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.aha1740_hostdata* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
