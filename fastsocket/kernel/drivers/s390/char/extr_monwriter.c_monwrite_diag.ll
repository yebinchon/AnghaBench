; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monwriter.c_monwrite_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monwriter.c_monwrite_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monwrite_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.appldata_product_id = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"LNXAPPL\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Writing monitor data failed with rc=%i\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.monwrite_hdr*, i8*, i32)* @monwrite_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monwrite_diag(%struct.monwrite_hdr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.monwrite_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.appldata_product_id, align 4
  %9 = alloca i32, align 4
  store %struct.monwrite_hdr* %0, %struct.monwrite_hdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %8, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %8, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %8, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %8, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @appldata_asm(%struct.appldata_product_id* %8, i32 %33, i8* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %48, %41
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @appldata_asm(%struct.appldata_product_id*, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
