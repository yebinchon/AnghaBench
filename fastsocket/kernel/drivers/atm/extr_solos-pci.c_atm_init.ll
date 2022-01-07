; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_atm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_atm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__**, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8*, %struct.solos_card*, %struct.TYPE_5__, i32, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pkt_hdr = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"solos-pci\00", align 1
@fpga_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not register ATM device %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dev_attr_console = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not register console for ATM device %d\0A\00", align 1
@solos_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Could not register parameter group for ATM device %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Registered ATM device %d\0A\00", align 1
@ATM_PHY_SIG_UNKNOWN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to allocate sk_buff in atm_init()\0A\00", align 1
@PKT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*)* @atm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_init(%struct.solos_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solos_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pkt_hdr*, align 8
  store %struct.solos_card* %0, %struct.solos_card** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %185, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %10 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %188

13:                                               ; preds = %7
  %14 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %15 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @skb_queue_head_init(i32* %19)
  %21 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %22 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @skb_queue_head_init(i32* %26)
  %28 = call %struct.TYPE_8__* @atm_dev_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @fpga_ops, i32 -1, i32* null)
  %29 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %30 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %33
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %36 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %13
  %44 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %45 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %51 = call i32 @atm_remove(%struct.solos_card* %50)
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %189

54:                                               ; preds = %13
  %55 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %56 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = call i64 @device_create_file(%struct.TYPE_7__* %62, i32* @dev_attr_console)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %67 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %54
  %73 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %74 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %75, i64 %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i64 @sysfs_create_group(i32* %81, i32* @solos_attr_group)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %86 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %72
  %92 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %93 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %97 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %98, i64 %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %107 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %106, i32 0, i32 2
  %108 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %108, i64 %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 8, i32* %114, align 8
  %115 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %116 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %117, i64 %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32 16, i32* %123, align 4
  %124 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %125 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %126 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store %struct.solos_card* %124, %struct.solos_card** %132, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %137 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %136, i32 0, i32 2
  %138 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %138, i64 %140
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i8* %135, i8** %143, align 8
  %144 = load i32, i32* @ATM_PHY_SIG_UNKNOWN, align 4
  %145 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %146 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %147, i64 %149
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 %144, i32* %152, align 8
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %153)
  store %struct.sk_buff* %154, %struct.sk_buff** %5, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %91
  %158 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %159 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = call i32 @dev_warn(i32* %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %185

163:                                              ; preds = %91
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = call i64 @skb_put(%struct.sk_buff* %164, i32 32)
  %166 = inttoptr i64 %165 to i8*
  %167 = bitcast i8* %166 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %167, %struct.pkt_hdr** %6, align 8
  %168 = call i8* @cpu_to_le16(i32 0)
  %169 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %170 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = call i8* @cpu_to_le16(i32 0)
  %172 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %173 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = call i8* @cpu_to_le16(i32 0)
  %175 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %176 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* @PKT_STATUS, align 4
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.pkt_hdr*, %struct.pkt_hdr** %6, align 8
  %180 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %182 = load i32, i32* %4, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %184 = call i32 @fpga_queue(%struct.solos_card* %181, i32 %182, %struct.sk_buff* %183, i32* null)
  br label %185

185:                                              ; preds = %163, %157
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %7

188:                                              ; preds = %7
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %43
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.TYPE_8__* @atm_dev_register(i8*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @atm_remove(%struct.solos_card*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fpga_queue(%struct.solos_card*, i32, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
