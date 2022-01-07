; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_get_adapter_model.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_get_adapter_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.bfi_ioc_attr* }
%struct.bfi_ioc_attr = type { i32 }

@BFA_ADAPTER_MODEL_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@BFA_MFG_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i8*)* @bfa_ioc_get_adapter_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_get_adapter_model(%struct.bfa_ioc* %0, i8* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfi_ioc_attr*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @BFA_ADAPTER_MODEL_NAME_LEN, align 4
  %13 = call i32 @memset(i8* %11, i32 0, i32 %12)
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %14, i32 0, i32 0
  %16 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %15, align 8
  store %struct.bfi_ioc_attr* %16, %struct.bfi_ioc_attr** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @BFA_ADAPTER_MODEL_NAME_LEN, align 4
  %19 = load i8*, i8** @BFA_MFG_NAME, align 8
  %20 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %21 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
