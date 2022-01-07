; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_state_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_qp_state_machine(%struct.ocrdma_qp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @get_ocrdma_qp_state(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %14 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %21 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_ibqp_state(i32 %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %33 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %32, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 1, i32* %4, align 4
  br label %114

36:                                               ; preds = %25
  %37 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %38 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %98 [
    i32 132, label %40
    i32 133, label %47
    i32 131, label %57
    i32 130, label %67
    i32 129, label %77
    i32 128, label %84
    i32 134, label %91
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %43 [
    i32 132, label %42
    i32 133, label %42
  ]

42:                                               ; preds = %40, %40
  br label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %101

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %53 [
    i32 133, label %49
    i32 131, label %49
    i32 134, label %50
  ]

49:                                               ; preds = %47, %47
  br label %56

50:                                               ; preds = %47
  %51 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %52 = call i32 @ocrdma_flush_qp(%struct.ocrdma_qp* %51)
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %50, %49
  br label %101

57:                                               ; preds = %36
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %63 [
    i32 130, label %59
    i32 134, label %60
  ]

59:                                               ; preds = %57
  br label %66

60:                                               ; preds = %57
  %61 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %62 = call i32 @ocrdma_flush_qp(%struct.ocrdma_qp* %61)
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %60, %59
  br label %101

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  switch i32 %68, label %73 [
    i32 129, label %69
    i32 128, label %69
    i32 134, label %70
  ]

69:                                               ; preds = %67, %67
  br label %76

70:                                               ; preds = %67
  %71 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %72 = call i32 @ocrdma_flush_qp(%struct.ocrdma_qp* %71)
  br label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %70, %69
  br label %101

77:                                               ; preds = %36
  %78 = load i32, i32* %10, align 4
  switch i32 %78, label %80 [
    i32 130, label %79
    i32 128, label %79
    i32 134, label %79
  ]

79:                                               ; preds = %77, %77, %77
  br label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %79
  br label %101

84:                                               ; preds = %36
  %85 = load i32, i32* %10, align 4
  switch i32 %85, label %87 [
    i32 130, label %86
    i32 134, label %86
  ]

86:                                               ; preds = %84, %84
  br label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %101

91:                                               ; preds = %36
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %94 [
    i32 132, label %93
  ]

93:                                               ; preds = %91
  br label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %93
  br label %101

98:                                               ; preds = %36
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %97, %90, %83, %76, %66, %56, %46
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %107 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %110 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %109, i32 0, i32 1
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %108, %31
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @get_ocrdma_qp_state(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_ibqp_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocrdma_flush_qp(%struct.ocrdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
