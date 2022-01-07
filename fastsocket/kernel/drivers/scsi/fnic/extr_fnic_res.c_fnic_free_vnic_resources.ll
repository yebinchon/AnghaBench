; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.c_fnic_free_vnic_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.c_fnic_free_vnic_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_free_vnic_resources(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.fnic*, %struct.fnic** %2, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.fnic*, %struct.fnic** %2, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 9
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @vnic_wq_free(i32* %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.fnic*, %struct.fnic** %2, align 8
  %25 = getelementptr inbounds %struct.fnic, %struct.fnic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.fnic*, %struct.fnic** %2, align 8
  %30 = getelementptr inbounds %struct.fnic, %struct.fnic* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @vnic_wq_copy_free(i32* %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.fnic*, %struct.fnic** %2, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.fnic*, %struct.fnic** %2, align 8
  %48 = getelementptr inbounds %struct.fnic, %struct.fnic* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @vnic_rq_free(i32* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %40

57:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.fnic*, %struct.fnic** %2, align 8
  %61 = getelementptr inbounds %struct.fnic, %struct.fnic* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.fnic*, %struct.fnic** %2, align 8
  %66 = getelementptr inbounds %struct.fnic, %struct.fnic* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @vnic_cq_free(i32* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %58

75:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.fnic*, %struct.fnic** %2, align 8
  %79 = getelementptr inbounds %struct.fnic, %struct.fnic* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.fnic*, %struct.fnic** %2, align 8
  %84 = getelementptr inbounds %struct.fnic, %struct.fnic* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @vnic_intr_free(i32* %88)
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %76

93:                                               ; preds = %76
  ret void
}

declare dso_local i32 @vnic_wq_free(i32*) #1

declare dso_local i32 @vnic_wq_copy_free(i32*) #1

declare dso_local i32 @vnic_rq_free(i32*) #1

declare dso_local i32 @vnic_cq_free(i32*) #1

declare dso_local i32 @vnic_intr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
