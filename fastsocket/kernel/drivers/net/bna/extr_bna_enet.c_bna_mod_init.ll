; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { i32, i8*, i8*, i32, i32, i32, i32 }
%struct.bna_res_info = type { i32 }

@BFI_INVALID_RID = common dso_local global i8* null, align 8
@BNA_MOD_F_INIT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_mod_init(%struct.bna* %0, %struct.bna_res_info* %1) #0 {
  %3 = alloca %struct.bna*, align 8
  %4 = alloca %struct.bna_res_info*, align 8
  store %struct.bna* %0, %struct.bna** %3, align 8
  store %struct.bna_res_info* %1, %struct.bna_res_info** %4, align 8
  %5 = load %struct.bna*, %struct.bna** %3, align 8
  %6 = getelementptr inbounds %struct.bna, %struct.bna* %5, i32 0, i32 6
  %7 = load %struct.bna*, %struct.bna** %3, align 8
  %8 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %9 = call i32 @bna_tx_mod_init(i32* %6, %struct.bna* %7, %struct.bna_res_info* %8)
  %10 = load %struct.bna*, %struct.bna** %3, align 8
  %11 = getelementptr inbounds %struct.bna, %struct.bna* %10, i32 0, i32 5
  %12 = load %struct.bna*, %struct.bna** %3, align 8
  %13 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %14 = call i32 @bna_rx_mod_init(i32* %11, %struct.bna* %12, %struct.bna_res_info* %13)
  %15 = load %struct.bna*, %struct.bna** %3, align 8
  %16 = getelementptr inbounds %struct.bna, %struct.bna* %15, i32 0, i32 4
  %17 = load %struct.bna*, %struct.bna** %3, align 8
  %18 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %19 = call i32 @bna_ucam_mod_init(i32* %16, %struct.bna* %17, %struct.bna_res_info* %18)
  %20 = load %struct.bna*, %struct.bna** %3, align 8
  %21 = getelementptr inbounds %struct.bna, %struct.bna* %20, i32 0, i32 3
  %22 = load %struct.bna*, %struct.bna** %3, align 8
  %23 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %24 = call i32 @bna_mcam_mod_init(i32* %21, %struct.bna* %22, %struct.bna_res_info* %23)
  %25 = load i8*, i8** @BFI_INVALID_RID, align 8
  %26 = load %struct.bna*, %struct.bna** %3, align 8
  %27 = getelementptr inbounds %struct.bna, %struct.bna* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @BFI_INVALID_RID, align 8
  %29 = load %struct.bna*, %struct.bna** %3, align 8
  %30 = getelementptr inbounds %struct.bna, %struct.bna* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @BNA_MOD_F_INIT_DONE, align 4
  %32 = load %struct.bna*, %struct.bna** %3, align 8
  %33 = getelementptr inbounds %struct.bna, %struct.bna* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  ret void
}

declare dso_local i32 @bna_tx_mod_init(i32*, %struct.bna*, %struct.bna_res_info*) #1

declare dso_local i32 @bna_rx_mod_init(i32*, %struct.bna*, %struct.bna_res_info*) #1

declare dso_local i32 @bna_ucam_mod_init(i32*, %struct.bna*, %struct.bna_res_info*) #1

declare dso_local i32 @bna_mcam_mod_init(i32*, %struct.bna*, %struct.bna_res_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
