; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_srb_to_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_srb_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_dvc_var = type { i64, i32** }

@.str = private unnamed_addr constant [30 x i8] c"advansys: bad SRB %u, max %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Returning ptr %p from array offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.asc_dvc_var*, i64)* @advansys_srb_to_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @advansys_srb_to_ptr(%struct.asc_dvc_var* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.asc_dvc_var*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.asc_dvc_var* %0, %struct.asc_dvc_var** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 %7, -1
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %11 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %17 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %18)
  store i8* null, i8** %3, align 8
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %22 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %6, align 8
  %28 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %29 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  store i32* null, i32** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ASC_DBG(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %33, i64 %34)
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %20, %14
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @printk(i8*, i64, i64) #1

declare dso_local i32 @ASC_DBG(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
