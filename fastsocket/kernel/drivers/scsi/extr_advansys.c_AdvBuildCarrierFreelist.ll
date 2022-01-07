; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvBuildCarrierFreelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvBuildCarrierFreelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv_dvc_var = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@ADV_CARRIER_BUFSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv_dvc_var*)* @AdvBuildCarrierFreelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdvBuildCarrierFreelist(%struct.adv_dvc_var* %0) #0 {
  %2 = alloca %struct.adv_dvc_var*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.adv_dvc_var* %0, %struct.adv_dvc_var** %2, align 8
  %6 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %7 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i64 @ADV_16BALIGN(%struct.TYPE_5__* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %12 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %11, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %15 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp eq %struct.TYPE_5__* %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @ADV_CARRIER_BUFSIZE, align 8
  store i64 %19, i64* %4, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load i64, i64* @ADV_CARRIER_BUFSIZE, align 8
  %22 = sub i64 %21, 24
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %20, %18
  br label %24

24:                                               ; preds = %50, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 @virt_to_bus(%struct.TYPE_5__* %25)
  %27 = call i8* @cpu_to_le32(i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = sub i64 %28, 24
  store i64 %29, i64* %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = call i32 @ADV_VADDR_TO_U32(%struct.TYPE_5__* %33)
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %39 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @ADV_VADDR_TO_U32(%struct.TYPE_5__* %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %47 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %46, i32 0, i32 0
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 1
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %3, align 8
  br label %50

50:                                               ; preds = %24
  %51 = load i64, i64* %4, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %24, label %53

53:                                               ; preds = %50
  ret void
}

declare dso_local i64 @ADV_16BALIGN(%struct.TYPE_5__*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_5__*) #1

declare dso_local i32 @ADV_VADDR_TO_U32(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
