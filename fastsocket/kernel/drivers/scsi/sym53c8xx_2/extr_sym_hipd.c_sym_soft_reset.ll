; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }

@FE_ISTAT1 = common dso_local global i32 0, align 4
@nc_istat1 = common dso_local global i32 0, align 4
@SCRUN = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@CABRT = common dso_local global i32 0, align 4
@SIP = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@DIP = common dso_local global i32 0, align 4
@nc_dstat = common dso_local global i32 0, align 4
@ABRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: unable to abort current chip operation, ISTAT=0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_soft_reset(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %6 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FE_ISTAT1, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %13 = load i32, i32* @nc_istat1, align 4
  %14 = call i32 @INB(%struct.sym_hcb* %12, i32 %13)
  %15 = load i32, i32* @SCRUN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %1
  br label %71

19:                                               ; preds = %11
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %21 = load i32, i32* @nc_istat, align 4
  %22 = load i32, i32* @CABRT, align 4
  %23 = call i32 @OUTB(%struct.sym_hcb* %20, i32 %21, i32 %22)
  store i32 100000, i32* %4, align 4
  br label %24

24:                                               ; preds = %56, %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %29 = load i32, i32* @nc_istat, align 4
  %30 = call i32 @INB(%struct.sym_hcb* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SIP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %37 = load i32, i32* @nc_sist, align 4
  %38 = call i32 @INW(%struct.sym_hcb* %36, i32 %37)
  br label %54

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DIP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %46 = load i32, i32* @nc_dstat, align 4
  %47 = call i32 @INB(%struct.sym_hcb* %45, i32 %46)
  %48 = load i32, i32* @ABRT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %59

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %35
  %55 = call i32 @udelay(i32 5)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  br label %24

59:                                               ; preds = %51, %24
  %60 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %61 = load i32, i32* @nc_istat, align 4
  %62 = call i32 @OUTB(%struct.sym_hcb* %60, i32 %61, i32 0)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %67 = call i8* @sym_name(%struct.sym_hcb* %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %18
  %72 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %73 = call i32 @sym_chip_reset(%struct.sym_hcb* %72)
  ret void
}

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @INW(%struct.sym_hcb*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @sym_chip_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
