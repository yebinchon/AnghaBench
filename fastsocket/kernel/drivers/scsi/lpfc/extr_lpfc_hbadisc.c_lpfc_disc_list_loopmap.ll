; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_list_loopmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_list_loopmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32* }

@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_MAXLOOP = common dso_local global i32 0, align 4
@lpfcAlpaArray = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_disc_list_loopmap(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %7, i32 0, i32 2
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_hba* %9, %struct.lpfc_hba** %3, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %102

21:                                               ; preds = %14
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %30, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %29
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 255
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %37
  br label %59

55:                                               ; preds = %51
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @lpfc_setup_disc_node(%struct.lpfc_vport* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %29

62:                                               ; preds = %29
  br label %101

63:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %97, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FC_MAXLOOP, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %64
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %6, align 4
  br label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @FC_MAXLOOP, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %73
  %81 = load i32*, i32** @lpfcAlpaArray, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 255
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %97

93:                                               ; preds = %80
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @lpfc_setup_disc_node(%struct.lpfc_vport* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %92
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %64

100:                                              ; preds = %64
  br label %101

101:                                              ; preds = %100, %62
  br label %102

102:                                              ; preds = %101, %20, %13
  ret void
}

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_setup_disc_node(%struct.lpfc_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
