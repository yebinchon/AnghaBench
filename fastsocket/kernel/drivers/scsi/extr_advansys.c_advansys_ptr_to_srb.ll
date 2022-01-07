; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_ptr_to_srb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_ptr_to_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_dvc_var = type { i32, i8** }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BAD_SRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Putting ptr %p into array offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asc_dvc_var*, i8*)* @advansys_ptr_to_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_ptr_to_srb(%struct.asc_dvc_var* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asc_dvc_var*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.asc_dvc_var* %0, %struct.asc_dvc_var** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %11 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %16 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %61

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %30 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %35 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %38 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %43 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %46 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i8** @krealloc(i8** %44, i32 %50, i32 %51)
  store i8** %52, i8*** %7, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @BAD_SRB, align 4
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %41
  %58 = load i8**, i8*** %7, align 8
  %59 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %60 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %59, i32 0, i32 1
  store i8** %58, i8*** %60, align 8
  br label %61

61:                                               ; preds = %57, %23
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ASC_DBG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.asc_dvc_var*, %struct.asc_dvc_var** %4, align 8
  %67 = getelementptr inbounds %struct.asc_dvc_var, %struct.asc_dvc_var* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %65, i8** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %61, %55
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8** @krealloc(i8**, i32, i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
