; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_send_filter_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_send_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DEVICE = type { i32, i64, %struct.dev_mc_list*, i64 }
%struct.dev_mc_list = type { i64, %struct.dev_mc_list* }
%struct.dmfe_board_info = type { i32, i32, i32, %struct.tx_desc* }
%struct.tx_desc = type { i8*, i8*, %struct.tx_desc*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"send_filter_frame()\00", align 1
@DCR1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.DEVICE*, i32)* @send_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_filter_frame(%struct.DEVICE* %0, i32 %1) #0 {
  %3 = alloca %struct.DEVICE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmfe_board_info*, align 8
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca %struct.tx_desc*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.DEVICE* %0, %struct.DEVICE** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %12 = call %struct.dmfe_board_info* @netdev_priv(%struct.DEVICE* %11)
  store %struct.dmfe_board_info* %12, %struct.dmfe_board_info** %5, align 8
  %13 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  %14 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %15 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %14, i32 0, i32 3
  %16 = load %struct.tx_desc*, %struct.tx_desc** %15, align 8
  store %struct.tx_desc* %16, %struct.tx_desc** %7, align 8
  %17 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %18 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %22 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8**
  store i8** %24, i8*** %8, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %9, align 8
  store i32 65535, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %9, align 8
  store i32 65535, i32* %45, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 65535, i32* %47, align 4
  %49 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %50 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %49, i32 0, i32 2
  %51 = load %struct.dev_mc_list*, %struct.dev_mc_list** %50, align 8
  store %struct.dev_mc_list* %51, %struct.dev_mc_list** %6, align 8
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %79, %2
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %58 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8**
  store i8** %60, i8*** %8, align 8
  %61 = load i8**, i8*** %8, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %67 = load i8**, i8*** %8, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i8**, i8*** %8, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %79

79:                                               ; preds = %56
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %83 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %82, i32 0, i32 1
  %84 = load %struct.dev_mc_list*, %struct.dev_mc_list** %83, align 8
  store %struct.dev_mc_list* %84, %struct.dev_mc_list** %6, align 8
  br label %52

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %96, %85
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 14
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %9, align 8
  store i32 65535, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  store i32 65535, i32* %92, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  store i32 65535, i32* %94, align 4
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %86

99:                                               ; preds = %86
  %100 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %101 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %100, i32 0, i32 2
  %102 = load %struct.tx_desc*, %struct.tx_desc** %101, align 8
  %103 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %104 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %103, i32 0, i32 3
  store %struct.tx_desc* %102, %struct.tx_desc** %104, align 8
  %105 = call i8* @cpu_to_le32(i32 -1996488512)
  %106 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %107 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %109 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %144, label %112

112:                                              ; preds = %99
  %113 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %114 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = call i8* @cpu_to_le32(i32 -2147483648)
  %118 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %119 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %121 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, 8192
  %124 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %125 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @update_cr6(i32 %123, i64 %126)
  %128 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %129 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DCR1, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outl(i32 1, i64 %132)
  %134 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %135 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %138 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @update_cr6(i32 %136, i64 %139)
  %141 = load i32, i32* @jiffies, align 4
  %142 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %143 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %149

144:                                              ; preds = %99
  %145 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %5, align 8
  %146 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %112
  ret void
}

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.DEVICE*) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @update_cr6(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
