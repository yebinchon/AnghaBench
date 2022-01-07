; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_setenv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i32, i32, %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i64 }

@CFE_CMD_ENV_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_setenv(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cfe_xiocb, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @CFE_CMD_ENV_SET, align 4
  %7 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 5
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 1
  store i32 4, i32* %11, align 4
  %12 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @XPTR_FROM_NATIVE(i8* %15)
  %17 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strlen(i8* %20)
  %22 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @XPTR_FROM_NATIVE(i8* %25)
  %27 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @strlen(i8* %30)
  %32 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %5)
  %36 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  ret i32 %37
}

declare dso_local i8* @XPTR_FROM_NATIVE(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
