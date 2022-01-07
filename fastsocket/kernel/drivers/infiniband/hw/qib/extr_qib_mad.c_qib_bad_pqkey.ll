; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_bad_pqkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_bad_pqkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32, i32, i32 }
%struct.ib_mad_notice_attr = type { %struct.TYPE_6__, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@IB_NOTICE_TRAP_BAD_PKEY = common dso_local global i64 0, align 8
@IB_NOTICE_TYPE_SECURITY = common dso_local global i32 0, align 4
@IB_NOTICE_PROD_CA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_bad_pqkey(%struct.qib_ibport* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ib_mad_notice_attr, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @IB_NOTICE_TRAP_BAD_PKEY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %23 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %31

26:                                               ; preds = %8
  %27 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %28 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %33 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @IB_NOTICE_TYPE_SECURITY, align 4
  %37 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 6
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @IB_NOTICE_PROD_CA, align 4
  %40 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 3
  store i64 %41, i64* %42, align 8
  %43 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %44 = call %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_be16(i32 %46)
  %48 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 0
  %51 = call i32 @memset(%struct.TYPE_6__* %50, i32 0, i32 40)
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %16, align 8
  %57 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 28
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %66, %67
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %17, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  %78 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %79 = call i32 @qib_send_trap(%struct.qib_ibport* %78, %struct.ib_mad_notice_attr* %17, i32 88)
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @qib_send_trap(%struct.qib_ibport*, %struct.ib_mad_notice_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
