; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_plogi_evaluate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_plogi_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, i32 }
%struct.fsf_plogi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }

@FC_COS_CLASS1 = common dso_local global i32 0, align 4
@FC_COS_CLASS2 = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@FC_COS_CLASS4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fc_plogi_evaluate(%struct.zfcp_port* %0, %struct.fsf_plogi* %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.fsf_plogi*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store %struct.fsf_plogi* %1, %struct.fsf_plogi** %4, align 8
  %5 = load %struct.fsf_plogi*, %struct.fsf_plogi** %4, align 8
  %6 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fsf_plogi*, %struct.fsf_plogi** %4, align 8
  %12 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 6
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  %18 = shl i32 %17, 8
  %19 = or i32 %10, %18
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fsf_plogi*, %struct.fsf_plogi** %4, align 8
  %23 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @FC_COS_CLASS1, align 4
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.fsf_plogi*, %struct.fsf_plogi** %4, align 8
  %38 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @FC_COS_CLASS2, align 4
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %36
  %52 = load %struct.fsf_plogi*, %struct.fsf_plogi** %4, align 8
  %53 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* @FC_COS_CLASS3, align 4
  %62 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %63 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %51
  %67 = load %struct.fsf_plogi*, %struct.fsf_plogi** %4, align 8
  %68 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @FC_COS_CLASS4, align 4
  %77 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %78 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
