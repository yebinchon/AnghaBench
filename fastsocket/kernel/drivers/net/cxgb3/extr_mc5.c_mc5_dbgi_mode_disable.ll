; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_mc5.c_mc5_dbgi_mode_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_mc5.c_mc5_dbgi_mode_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { i64, i32, i32 }

@A_MC5_DB_CONFIG = common dso_local global i32 0, align 4
@MC5_MODE_72_BIT = common dso_local global i64 0, align 8
@F_MBUSEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mc5*)* @mc5_dbgi_mode_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc5_dbgi_mode_disable(%struct.mc5* %0) #0 {
  %2 = alloca %struct.mc5*, align 8
  store %struct.mc5* %0, %struct.mc5** %2, align 8
  %3 = load %struct.mc5*, %struct.mc5** %2, align 8
  %4 = getelementptr inbounds %struct.mc5, %struct.mc5* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @A_MC5_DB_CONFIG, align 4
  %7 = load %struct.mc5*, %struct.mc5** %2, align 8
  %8 = getelementptr inbounds %struct.mc5, %struct.mc5* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MC5_MODE_72_BIT, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @V_TMMODE(i32 %12)
  %14 = load %struct.mc5*, %struct.mc5** %2, align 8
  %15 = getelementptr inbounds %struct.mc5, %struct.mc5* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MC5_MODE_72_BIT, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @V_COMPEN(i32 %19)
  %21 = or i32 %13, %20
  %22 = load %struct.mc5*, %struct.mc5** %2, align 8
  %23 = getelementptr inbounds %struct.mc5, %struct.mc5* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @V_PRTYEN(i32 %24)
  %26 = or i32 %21, %25
  %27 = load i32, i32* @F_MBUSEN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @t3_write_reg(i32 %5, i32 %6, i32 %28)
  ret void
}

declare dso_local i32 @t3_write_reg(i32, i32, i32) #1

declare dso_local i32 @V_TMMODE(i32) #1

declare dso_local i32 @V_COMPEN(i32) #1

declare dso_local i32 @V_PRTYEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
