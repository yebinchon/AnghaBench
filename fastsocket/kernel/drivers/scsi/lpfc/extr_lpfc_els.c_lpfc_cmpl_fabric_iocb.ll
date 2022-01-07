; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_fabric_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_fabric_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_iocbq = type { i32, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, %struct.TYPE_6__ }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_hba.1 = type opaque
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ls_rjt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@RJT_UNAVAIL_TEMP = common dso_local global i32 0, align 4
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSRJT_LOGICAL_BSY = common dso_local global i32 0, align 4
@FABRIC_COMANDS_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_fabric_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_fabric_iocb(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.ls_rjt, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %8 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %9 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %68 [
    i32 128, label %22
    i32 131, label %22
    i32 129, label %37
    i32 132, label %37
    i32 130, label %40
  ]

22:                                               ; preds = %17, %17
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RJT_UNAVAIL_TEMP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = call i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba* %34)
  br label %36

36:                                               ; preds = %33, %22
  br label %68

37:                                               ; preds = %17, %17
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = call i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba* %38)
  br label %68

40:                                               ; preds = %17
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %7, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %7, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LSRJT_LOGICAL_BSY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57, %40
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = call i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba* %65)
  br label %67

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %17, %67, %37, %36
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 1
  %71 = call i64 @atomic_read(i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %73, %68
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %76, i32 0, i32 2
  %78 = load i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %77, align 8
  %79 = bitcast i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %78 to i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 1
  store i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %79, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %81, align 8
  %82 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %83 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %82, i32 0, i32 2
  store i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* null, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %83, align 8
  %84 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %90, i32 0, i32 1
  %92 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %91, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %94 = bitcast %struct.lpfc_hba* %93 to %struct.lpfc_hba.0*
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %96 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %97 = call i32 %92(%struct.lpfc_hba.0* %94, %struct.lpfc_iocbq* %95, %struct.lpfc_iocbq* %96)
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = call i32 @atomic_dec(i32* %99)
  %101 = load i32, i32* @FABRIC_COMANDS_BLOCKED, align 4
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  %104 = call i32 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %75
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %108 = call i32 @lpfc_resume_fabric_iocbs(%struct.lpfc_hba* %107)
  br label %109

109:                                              ; preds = %106, %75
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @lpfc_block_fabric_iocbs(%struct.lpfc_hba*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lpfc_resume_fabric_iocbs(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
