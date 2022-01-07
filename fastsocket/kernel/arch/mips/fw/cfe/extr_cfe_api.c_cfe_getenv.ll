; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_getenv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i32, i32, %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32, i8*, i64 }

@CFE_CMD_ENV_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_getenv(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfe_xiocb, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* @CFE_CMD_ENV_GET, align 4
  %10 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 5
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 1
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @XPTR_FROM_NATIVE(i8* %18)
  %20 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @XPTR_FROM_NATIVE(i8* %28)
  %30 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %7)
  %38 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  ret i32 %39
}

declare dso_local i8* @XPTR_FROM_NATIVE(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
