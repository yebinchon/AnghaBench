; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_set_host_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_set_host_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_host*, i32)* @ibmvfc_set_host_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_set_host_action(%struct.ibmvfc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %67 [
    i32 140, label %6
    i32 136, label %16
    i32 138, label %26
    i32 134, label %36
    i32 128, label %46
    i32 139, label %56
    i32 130, label %56
    i32 137, label %66
    i32 133, label %66
    i32 129, label %66
    i32 135, label %66
    i32 131, label %66
    i32 132, label %66
  ]

6:                                                ; preds = %2
  %7 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 138
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 137
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %16
  br label %71

26:                                               ; preds = %2
  %27 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 139
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %71

36:                                               ; preds = %2
  %37 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %44 [
    i32 138, label %40
    i32 135, label %40
    i32 129, label %40
  ]

40:                                               ; preds = %36, %36, %36
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %43 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %40
  br label %71

46:                                               ; preds = %2
  %47 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %48 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 140
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %46
  br label %71

56:                                               ; preds = %2, %2
  %57 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %58 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %61 [
    i32 131, label %60
    i32 132, label %60
  ]

60:                                               ; preds = %56, %56
  br label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %60
  br label %71

66:                                               ; preds = %2, %2, %2, %2, %2, %2
  br label %67

67:                                               ; preds = %2, %66
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %70 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %65, %55, %45, %35, %25, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
