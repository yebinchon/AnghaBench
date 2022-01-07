; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_4__*, i64, i64, i64, i64, i32, %struct.bna_mac*, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.bna_mac = type { i32 }

@BFI_INVALID_RID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*)* @bna_rxf_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_uninit(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca %struct.bna_mac*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 10
  store i64 0, i64* %5, align 8
  %6 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %7 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %6, i32 0, i32 9
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %10 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %9, i32 0, i32 8
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 8
  %17 = call i32 @bfa_q_deq(i32* %16, %struct.bna_mac** %3)
  %18 = load %struct.bna_mac*, %struct.bna_mac** %3, align 8
  %19 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %18, i32 0, i32 0
  %20 = call i32 @bfa_q_qe_init(i32* %19)
  %21 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %22 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load %struct.bna_mac*, %struct.bna_mac** %3, align 8
  %28 = call i32 @bna_ucam_mod_mac_put(i32* %26, %struct.bna_mac* %27)
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 7
  %32 = load %struct.bna_mac*, %struct.bna_mac** %31, align 8
  %33 = icmp ne %struct.bna_mac* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %36 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %35, i32 0, i32 7
  %37 = load %struct.bna_mac*, %struct.bna_mac** %36, align 8
  %38 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %37, i32 0, i32 0
  %39 = call i32 @bfa_q_qe_init(i32* %38)
  %40 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %41 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %47 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %46, i32 0, i32 7
  %48 = load %struct.bna_mac*, %struct.bna_mac** %47, align 8
  %49 = call i32 @bna_ucam_mod_mac_put(i32* %45, %struct.bna_mac* %48)
  %50 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %51 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %50, i32 0, i32 7
  store %struct.bna_mac* null, %struct.bna_mac** %51, align 8
  br label %52

52:                                               ; preds = %34, %29
  br label %53

53:                                               ; preds = %59, %52
  %54 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %55 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %54, i32 0, i32 6
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %61 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %60, i32 0, i32 6
  %62 = call i32 @bfa_q_deq(i32* %61, %struct.bna_mac** %3)
  %63 = load %struct.bna_mac*, %struct.bna_mac** %3, align 8
  %64 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %63, i32 0, i32 0
  %65 = call i32 @bfa_q_qe_init(i32* %64)
  %66 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %67 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load %struct.bna_mac*, %struct.bna_mac** %3, align 8
  %73 = call i32 @bna_mcam_mod_mac_put(i32* %71, %struct.bna_mac* %72)
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %76 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %78 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %80 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %87 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %74
  %93 = load i8*, i8** @BFI_INVALID_RID, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %96 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i64 %94, i64* %100, align 8
  br label %101

101:                                              ; preds = %92, %74
  %102 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %103 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %110 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %108, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %101
  %116 = load i8*, i8** @BFI_INVALID_RID, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %119 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i64 %117, i64* %123, align 8
  br label %124

124:                                              ; preds = %115, %101
  %125 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %126 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %128 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %130 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %132 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %131, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %132, align 8
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bna_mac**) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @bna_ucam_mod_mac_put(i32*, %struct.bna_mac*) #1

declare dso_local i32 @bna_mcam_mod_mac_put(i32*, %struct.bna_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
