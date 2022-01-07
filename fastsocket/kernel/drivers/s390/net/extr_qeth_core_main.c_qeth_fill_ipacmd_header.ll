; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_fill_ipacmd_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_fill_ipacmd_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i8*, i32, i32, i32, i8* }

@IPA_CMD_INITIATOR_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_ipa_cmd*, i8*, i32)* @qeth_fill_ipacmd_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_fill_ipacmd_header(%struct.qeth_card* %0, %struct.qeth_ipa_cmd* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_ipa_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_ipa_cmd* %1, %struct.qeth_ipa_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %10 = call i32 @memset(%struct.qeth_ipa_cmd* %9, i32 0, i32 64)
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @IPA_CMD_INITIATOR_HOST, align 4
  %16 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 8
  store i32 %15, i32* %18, align 8
  %19 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 7
  store i32 %22, i32* %25, align 4
  %26 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @qeth_get_ipa_adp_type(i32 %29)
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  store i32 %30, i32* %33, align 8
  %34 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  store i8* %38, i8** %41, align 8
  %42 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %4
  %48 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 2, i32* %50, align 8
  br label %55

51:                                               ; preds = %4
  %52 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @memset(%struct.qeth_ipa_cmd*, i32, i32) #1

declare dso_local i32 @qeth_get_ipa_adp_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
