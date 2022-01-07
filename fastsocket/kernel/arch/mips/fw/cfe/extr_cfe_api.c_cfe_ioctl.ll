; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i32, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@CFE_CMD_DEV_IOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_ioctl(i32 %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfe_xiocb, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @CFE_CMD_DEV_IOCTL, align 4
  %15 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 2
  store i32 4, i32* %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @XPTR_FROM_NATIVE(i8* %29)
  %31 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %13)
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %6
  %42 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %6
  %48 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %13, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  ret i32 %49
}

declare dso_local i32 @XPTR_FROM_NATIVE(i8*) #1

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
