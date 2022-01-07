; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_init_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_init_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IBA7220_KRCVEGRCNT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*)* @qib_7220_init_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_init_ctxt(%struct.qib_ctxtdata* %0) #0 {
  %2 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %2, align 8
  %3 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %4 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** @IBA7220_KRCVEGRCNT, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %12, i32 0, i32 2
  store i8* null, i8** %13, align 8
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** @IBA7220_KRCVEGRCNT, align 8
  %25 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %24, i64 %33
  %35 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %36 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %14, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
