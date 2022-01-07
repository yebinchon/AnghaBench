; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_descriptor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_descriptor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i32, i8*, i32, %struct.rx_desc*, %struct.tx_desc*, %struct.rx_desc*, %struct.rx_desc*, %struct.tx_desc*, %struct.tx_desc* }
%struct.rx_desc = type { %struct.rx_desc*, i8*, i8*, i8* }
%struct.tx_desc = type { i8*, %struct.tx_desc*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"dmfe_descriptor_init()\00", align 1
@DCR4 = common dso_local global i64 0, align 8
@TX_DESC_CNT = common dso_local global i32 0, align 4
@DCR3 = common dso_local global i64 0, align 8
@TX_BUF_ALLOC = common dso_local global i32 0, align 4
@RX_DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*, i64)* @dmfe_descriptor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_descriptor_init(%struct.dmfe_board_info* %0, i64 %1) #0 {
  %3 = alloca %struct.dmfe_board_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tx_desc*, align 8
  %6 = alloca %struct.rx_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %14 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %13, i32 0, i32 5
  %15 = load %struct.tx_desc*, %struct.tx_desc** %14, align 8
  %16 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %17 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %16, i32 0, i32 9
  store %struct.tx_desc* %15, %struct.tx_desc** %17, align 8
  %18 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %19 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %18, i32 0, i32 5
  %20 = load %struct.tx_desc*, %struct.tx_desc** %19, align 8
  %21 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %22 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %21, i32 0, i32 8
  store %struct.tx_desc* %20, %struct.tx_desc** %22, align 8
  %23 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %24 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @DCR4, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @outl(i32 %25, i64 %28)
  %30 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %31 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %30, i32 0, i32 5
  %32 = load %struct.tx_desc*, %struct.tx_desc** %31, align 8
  %33 = bitcast %struct.tx_desc* %32 to i8*
  %34 = load i32, i32* @TX_DESC_CNT, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 48, %35
  %37 = getelementptr i8, i8* %33, i64 %36
  %38 = bitcast i8* %37 to %struct.rx_desc*
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 4
  store %struct.rx_desc* %38, %struct.rx_desc** %40, align 8
  %41 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %42 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* @TX_DESC_CNT, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 48, %46
  %48 = add i64 %44, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %51 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %53 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %52, i32 0, i32 4
  %54 = load %struct.rx_desc*, %struct.rx_desc** %53, align 8
  %55 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %56 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %55, i32 0, i32 7
  store %struct.rx_desc* %54, %struct.rx_desc** %56, align 8
  %57 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %58 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %57, i32 0, i32 4
  %59 = load %struct.rx_desc*, %struct.rx_desc** %58, align 8
  %60 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %61 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %60, i32 0, i32 6
  store %struct.rx_desc* %59, %struct.rx_desc** %61, align 8
  %62 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %63 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @DCR3, align 8
  %67 = add i64 %65, %66
  %68 = call i32 @outl(i32 %64, i64 %67)
  %69 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %70 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  %72 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %73 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %10, align 4
  %75 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %76 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %8, align 4
  %78 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %79 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %78, i32 0, i32 5
  %80 = load %struct.tx_desc*, %struct.tx_desc** %79, align 8
  store %struct.tx_desc* %80, %struct.tx_desc** %5, align 8
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %118, %2
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @TX_DESC_CNT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %88 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = call i8* @cpu_to_le32(i32 0)
  %90 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %91 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = call i8* @cpu_to_le32(i32 -2130706432)
  %93 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %94 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %98 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 48
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %106 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %108 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %107, i64 1
  %109 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %110 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %109, i32 0, i32 1
  store %struct.tx_desc* %108, %struct.tx_desc** %110, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* @TX_BUF_ALLOC, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8* %114, i8** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @TX_BUF_ALLOC, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %85
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %122 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %121, i32 1
  store %struct.tx_desc* %122, %struct.tx_desc** %5, align 8
  br label %81

123:                                              ; preds = %81
  %124 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %125 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %129 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %128, i32 -1
  store %struct.tx_desc* %129, %struct.tx_desc** %5, align 8
  %130 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  %131 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %132 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %131, i32 0, i32 5
  %133 = load %struct.tx_desc*, %struct.tx_desc** %132, align 8
  %134 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %135 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %134, i32 0, i32 1
  store %struct.tx_desc* %133, %struct.tx_desc** %135, align 8
  %136 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %137 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %9, align 4
  %139 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %140 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %139, i32 0, i32 4
  %141 = load %struct.rx_desc*, %struct.rx_desc** %140, align 8
  store %struct.rx_desc* %141, %struct.rx_desc** %6, align 8
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %165, %123
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @RX_DESC_CNT, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %142
  %147 = call i8* @cpu_to_le32(i32 0)
  %148 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %149 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = call i8* @cpu_to_le32(i32 16778752)
  %151 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %152 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %154, 32
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %160 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %162 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %161, i64 1
  %163 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %164 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %163, i32 0, i32 0
  store %struct.rx_desc* %162, %struct.rx_desc** %164, align 8
  br label %165

165:                                              ; preds = %146
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %169 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %168, i32 1
  store %struct.rx_desc* %169, %struct.rx_desc** %6, align 8
  br label %142

170:                                              ; preds = %142
  %171 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %172 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %176 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %175, i32 -1
  store %struct.rx_desc* %176, %struct.rx_desc** %6, align 8
  %177 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  %178 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %179 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %178, i32 0, i32 4
  %180 = load %struct.rx_desc*, %struct.rx_desc** %179, align 8
  %181 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %182 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %181, i32 0, i32 0
  store %struct.rx_desc* %180, %struct.rx_desc** %182, align 8
  %183 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %184 = call i32 @allocate_rx_buffer(%struct.dmfe_board_info* %183)
  ret void
}

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @allocate_rx_buffer(%struct.dmfe_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
