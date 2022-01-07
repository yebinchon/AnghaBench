; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_selectclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_selectclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32 }

@nc_scntl3 = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: enabling clock multiplier\0A\00", align 1
@nc_stest1 = common dso_local global i32 0, align 4
@DBLEN = common dso_local global i32 0, align 4
@FE_LCKFRQ = common dso_local global i32 0, align 4
@nc_stest4 = common dso_local global i32 0, align 4
@LCKFRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: the chip cannot lock the frequency\0A\00", align 1
@nc_mbox1 = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@HSC = common dso_local global i32 0, align 4
@DBLSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i32)* @sym_selectclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_selectclock(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %7 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %12 = load i32, i32* @nc_scntl3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @OUTB(%struct.sym_hcb* %11, i32 %12, i32 %13)
  br label %80

15:                                               ; preds = %2
  %16 = load i32, i32* @sym_verbose, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %20 = call i8* @sym_name(%struct.sym_hcb* %19)
  %21 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %24 = load i32, i32* @nc_stest1, align 4
  %25 = load i32, i32* @DBLEN, align 4
  %26 = call i32 @OUTB(%struct.sym_hcb* %23, i32 %24, i32 %25)
  %27 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %28 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FE_LCKFRQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  store i32 20, i32* %5, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %36 = load i32, i32* @nc_stest4, align 4
  %37 = call i32 @INB(%struct.sym_hcb* %35, i32 %36)
  %38 = load i32, i32* @LCKFRQ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br label %45

45:                                               ; preds = %41, %34
  %46 = phi i1 [ false, %34 ], [ %44, %41 ]
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = call i32 @udelay(i32 20)
  br label %34

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %54 = call i8* @sym_name(%struct.sym_hcb* %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %49
  br label %62

57:                                               ; preds = %22
  %58 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %59 = load i32, i32* @nc_mbox1, align 4
  %60 = call i32 @INB(%struct.sym_hcb* %58, i32 %59)
  %61 = call i32 @udelay(i32 60)
  br label %62

62:                                               ; preds = %57, %56
  %63 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %64 = load i32, i32* @nc_stest3, align 4
  %65 = load i32, i32* @HSC, align 4
  %66 = call i32 @OUTB(%struct.sym_hcb* %63, i32 %64, i32 %65)
  %67 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %68 = load i32, i32* @nc_scntl3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @OUTB(%struct.sym_hcb* %67, i32 %68, i32 %69)
  %71 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %72 = load i32, i32* @nc_stest1, align 4
  %73 = load i32, i32* @DBLEN, align 4
  %74 = load i32, i32* @DBLSEL, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @OUTB(%struct.sym_hcb* %71, i32 %72, i32 %75)
  %77 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %78 = load i32, i32* @nc_stest3, align 4
  %79 = call i32 @OUTB(%struct.sym_hcb* %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %62, %10
  ret void
}

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
