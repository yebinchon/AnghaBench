; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_getclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_getclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i8, i8, i32, i32 }

@DBLEN = common dso_local global i8 0, align 1
@DBLSEL = common dso_local global i8 0, align 1
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: clock multiplier found\0A\00", align 1
@nc_stest1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: chip clock is %uKHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: clock multiplier assumed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i32)* @sym_getclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_getclock(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %9 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  store i8 %10, i8* %5, align 1
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %12 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %15 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %14, i32 0, i32 2
  store i32 1, i32* %15, align 4
  store i32 40000, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @DBLEN, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @DBLSEL, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %22, %24
  %26 = and i32 %20, %25
  %27 = load i8, i8* @DBLEN, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @DBLSEL, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = load i32, i32* @sym_verbose, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %38 = call i8* @sym_name(%struct.sym_hcb* %37)
  %39 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %43 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %18, %2
  %45 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %46 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 7
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %101, label %60

60:                                               ; preds = %55, %50, %44
  %61 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %62 = load i32, i32* @nc_stest1, align 4
  %63 = call i32 @OUTB(%struct.sym_hcb* %61, i32 %62, i32 0)
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %65 = call i32 @sym_getfreq(%struct.sym_hcb* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @sym_verbose, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %70 = call i8* @sym_name(%struct.sym_hcb* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %60
  %74 = load i32, i32* %7, align 4
  %75 = icmp ult i32 %74, 45000
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 40000, i32* %7, align 4
  br label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %78, 55000
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 50000, i32* %7, align 4
  br label %82

81:                                               ; preds = %77
  store i32 80000, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i32, i32* %7, align 4
  %85 = icmp ult i32 %84, 80000
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* @sym_verbose, align 4
  %91 = icmp sge i32 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %94 = call i8* @sym_name(%struct.sym_hcb* %93)
  %95 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %99 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %86, %83
  br label %121

101:                                              ; preds = %55
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 7
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 40000, i32* %7, align 4
  br label %115

107:                                              ; preds = %101
  %108 = load i8, i8* %5, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 7
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 80000, i32* %7, align 4
  br label %114

113:                                              ; preds = %107
  store i32 160000, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %112
  br label %115

115:                                              ; preds = %114, %106
  %116 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %117 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = udiv i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %115, %100
  %122 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %123 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = mul i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %129 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_getfreq(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
