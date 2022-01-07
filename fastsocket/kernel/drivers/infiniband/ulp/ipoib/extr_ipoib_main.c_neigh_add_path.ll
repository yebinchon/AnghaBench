; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_neigh_add_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_neigh_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_path = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_neigh = type { i32, %struct.TYPE_4__*, i32, i32 }

@IPOIB_MAX_PATH_REC_QUEUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"queue length limit %d. Packet drop.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, %struct.net_device*)* @neigh_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_add_path(%struct.sk_buff* %0, i32* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_path*, align 8
  %9 = alloca %struct.ipoib_neigh*, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %7, align 8
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.ipoib_neigh* @ipoib_neigh_alloc(i32* %17, %struct.net_device* %18)
  store %struct.ipoib_neigh* %19, %struct.ipoib_neigh** %9, align 8
  %20 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %21 = icmp ne %struct.ipoib_neigh* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %3
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %32)
  br label %174

34:                                               ; preds = %3
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = call %struct.ipoib_path* @__path_find(%struct.net_device* %35, i32* %37)
  store %struct.ipoib_path* %38, %struct.ipoib_path** %8, align 8
  %39 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %40 = icmp ne %struct.ipoib_path* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = call %struct.ipoib_path* @path_rec_create(%struct.net_device* %42, i32* %44)
  store %struct.ipoib_path* %45, %struct.ipoib_path** %8, align 8
  %46 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %47 = icmp ne %struct.ipoib_path* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %157

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %52 = call i32 @__path_add(%struct.net_device* %50, %struct.ipoib_path* %51)
  br label %53

53:                                               ; preds = %49, %34
  %54 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %55 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %54, i32 0, i32 3
  %56 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %57 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %56, i32 0, i32 2
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %60 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %132

63:                                               ; preds = %53
  %64 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %65 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @kref_get(i32* %67)
  %69 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %70 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %73 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %72, i32 0, i32 1
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %76 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ipoib_cm_enabled(%struct.net_device* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %63
  %81 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %82 = call i32 @ipoib_cm_get(%struct.ipoib_neigh* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %88 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %89 = call i32 @ipoib_cm_create_tx(%struct.net_device* %86, %struct.ipoib_path* %87, %struct.ipoib_neigh* %88)
  %90 = call i32 @ipoib_cm_set(%struct.ipoib_neigh* %85, i32 %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %93 = call i32 @ipoib_cm_get(%struct.ipoib_neigh* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %97 = call i32 @ipoib_neigh_free(%struct.ipoib_neigh* %96)
  br label %160

98:                                               ; preds = %91
  %99 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %100 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %99, i32 0, i32 0
  %101 = call i64 @skb_queue_len(i32* %100)
  %102 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %106 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %105, i32 0, i32 0
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @__skb_queue_tail(i32* %106, %struct.sk_buff* %107)
  br label %115

109:                                              ; preds = %98
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %111 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %112 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %111, i32 0, i32 0
  %113 = call i64 @skb_queue_len(i32* %112)
  %114 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %113)
  br label %160

115:                                              ; preds = %104
  br label %131

116:                                              ; preds = %63
  %117 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %118 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %124 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @IPOIB_QPN(i32* %126)
  %128 = call i32 @ipoib_send(%struct.net_device* %121, %struct.sk_buff* %122, %struct.TYPE_4__* %125, i32 %127)
  %129 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %130 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %129)
  br label %174

131:                                              ; preds = %115
  br label %150

132:                                              ; preds = %53
  %133 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %134 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %133, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %134, align 8
  %135 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %136 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %142 = call i64 @path_rec_start(%struct.net_device* %140, %struct.ipoib_path* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %157

145:                                              ; preds = %139, %132
  %146 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %147 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %146, i32 0, i32 0
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @__skb_queue_tail(i32* %147, %struct.sk_buff* %148)
  br label %150

150:                                              ; preds = %145, %131
  %151 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %152 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %151, i32 0, i32 0
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %156 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %155)
  br label %174

157:                                              ; preds = %144, %48
  %158 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %159 = call i32 @ipoib_neigh_free(%struct.ipoib_neigh* %158)
  br label %160

160:                                              ; preds = %157, %109, %95
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %166)
  %168 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %169 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %168, i32 0, i32 0
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %9, align 8
  %173 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %172)
  br label %174

174:                                              ; preds = %160, %150, %116, %22
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipoib_neigh* @ipoib_neigh_alloc(i32*, %struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ipoib_path* @__path_find(%struct.net_device*, i32*) #1

declare dso_local %struct.ipoib_path* @path_rec_create(%struct.net_device*, i32*) #1

declare dso_local i32 @__path_add(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @ipoib_cm_enabled(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_cm_get(%struct.ipoib_neigh*) #1

declare dso_local i32 @ipoib_cm_set(%struct.ipoib_neigh*, i32) #1

declare dso_local i32 @ipoib_cm_create_tx(%struct.net_device*, %struct.ipoib_path*, %struct.ipoib_neigh*) #1

declare dso_local i32 @ipoib_neigh_free(%struct.ipoib_neigh*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i64) #1

declare dso_local i32 @ipoib_send(%struct.net_device*, %struct.sk_buff*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @IPOIB_QPN(i32*) #1

declare dso_local i32 @ipoib_neigh_put(%struct.ipoib_neigh*) #1

declare dso_local i64 @path_rec_start(%struct.net_device*, %struct.ipoib_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
