; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ata_rw_frameinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ata_rw_frameinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, i32, i32, %struct.TYPE_4__*, i32, i64, i64, i32, %struct.aoetgt*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.aoetgt = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.aoe_hdr = type { i32 }
%struct.aoe_atahdr = type { i32, i32, i8, i32 }

@DEVFL_EXT = common dso_local global i32 0, align 4
@AOEAFL_EXT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@AOEAFL_WRITE = common dso_local global i32 0, align 4
@ATA_CMD_PIO_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*)* @ata_rw_frameinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_rw_frameinit(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.aoetgt*, align 8
  %4 = alloca %struct.aoe_hdr*, align 8
  %5 = alloca %struct.aoe_atahdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.frame* %0, %struct.frame** %2, align 8
  %9 = load %struct.frame*, %struct.frame** %2, align 8
  %10 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 9
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @skb_mac_header(%struct.sk_buff* %12)
  %14 = inttoptr i64 %13 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %14, %struct.aoe_hdr** %4, align 8
  %15 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %15, i64 1
  %17 = bitcast %struct.aoe_hdr* %16 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %17, %struct.aoe_atahdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @skb_put(%struct.sk_buff* %18, i32 20)
  %20 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(%struct.aoe_hdr* %20, i32 0, i32 %23)
  store i8 16, i8* %7, align 1
  store i8 4, i8* %8, align 1
  %25 = load %struct.frame*, %struct.frame** %2, align 8
  %26 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 8
  %27 = load %struct.aoetgt*, %struct.aoetgt** %26, align 8
  store %struct.aoetgt* %27, %struct.aoetgt** %3, align 8
  %28 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %29 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %32 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %33 = call i32 @aoehdr_atainit(%struct.TYPE_6__* %30, %struct.aoetgt* %31, %struct.aoe_hdr* %32)
  %34 = load %struct.frame*, %struct.frame** %2, align 8
  %35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.frame*, %struct.frame** %2, align 8
  %37 = call i32 @fhash(%struct.frame* %36)
  %38 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %39 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.frame*, %struct.frame** %2, align 8
  %43 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.frame*, %struct.frame** %2, align 8
  %45 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.frame*, %struct.frame** %2, align 8
  %47 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %1
  %51 = load %struct.frame*, %struct.frame** %2, align 8
  %52 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.frame*, %struct.frame** %2, align 8
  %57 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %50, %1
  %59 = load %struct.frame*, %struct.frame** %2, align 8
  %60 = getelementptr inbounds %struct.frame, %struct.frame* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 9
  %63 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %64 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %66 = load %struct.frame*, %struct.frame** %2, align 8
  %67 = getelementptr inbounds %struct.frame, %struct.frame* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @put_lba(%struct.aoe_atahdr* %65, i32 %68)
  %70 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %71 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DEVFL_EXT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %58
  %79 = load i32, i32* @AOEAFL_EXT, align 4
  %80 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %81 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %93

84:                                               ; preds = %58
  store i8 0, i8* %8, align 1
  %85 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %86 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 15
  store i32 %88, i32* %86, align 4
  %89 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %90 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, 224
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84, %78
  %94 = load %struct.frame*, %struct.frame** %2, align 8
  %95 = getelementptr inbounds %struct.frame, %struct.frame* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %147

98:                                               ; preds = %93
  %99 = load %struct.frame*, %struct.frame** %2, align 8
  %100 = getelementptr inbounds %struct.frame, %struct.frame* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @bio_data_dir(i32 %103)
  %105 = load i64, i64* @WRITE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %98
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load %struct.frame*, %struct.frame** %2, align 8
  %110 = getelementptr inbounds %struct.frame, %struct.frame* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.frame*, %struct.frame** %2, align 8
  %113 = getelementptr inbounds %struct.frame, %struct.frame* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.frame*, %struct.frame** %2, align 8
  %116 = getelementptr inbounds %struct.frame, %struct.frame* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @skb_fillup(%struct.sk_buff* %108, i32 %111, i32 %114, i32 %117)
  %119 = load i32, i32* @AOEAFL_WRITE, align 4
  %120 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %121 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.frame*, %struct.frame** %2, align 8
  %125 = getelementptr inbounds %struct.frame, %struct.frame* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.frame*, %struct.frame** %2, align 8
  %132 = getelementptr inbounds %struct.frame, %struct.frame* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.frame*, %struct.frame** %2, align 8
  %137 = getelementptr inbounds %struct.frame, %struct.frame* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %144 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %152

147:                                              ; preds = %98, %93
  %148 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %149 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  store i8 0, i8* %7, align 1
  br label %152

152:                                              ; preds = %147, %107
  %153 = load i8, i8* @ATA_CMD_PIO_READ, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* %7, align 1
  %156 = sext i8 %155 to i32
  %157 = or i32 %154, %156
  %158 = load i8, i8* %8, align 1
  %159 = sext i8 %158 to i32
  %160 = or i32 %157, %159
  %161 = trunc i32 %160 to i8
  %162 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %163 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %162, i32 0, i32 2
  store i8 %161, i8* %163, align 4
  %164 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %165 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.aoe_hdr*, i32, i32) #1

declare dso_local i32 @aoehdr_atainit(%struct.TYPE_6__*, %struct.aoetgt*, %struct.aoe_hdr*) #1

declare dso_local i32 @fhash(%struct.frame*) #1

declare dso_local i32 @put_lba(%struct.aoe_atahdr*, i32) #1

declare dso_local i64 @bio_data_dir(i32) #1

declare dso_local i32 @skb_fillup(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
