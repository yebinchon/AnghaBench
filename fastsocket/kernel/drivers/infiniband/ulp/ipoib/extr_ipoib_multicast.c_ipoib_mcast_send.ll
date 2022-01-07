; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ipoib_mcast = type { %struct.TYPE_10__*, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ipoib_neigh = type { i32, %struct.TYPE_10__* }

@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"setting up send only multicast group for %pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"unable to allocate memory for multicast structure\0A\00", align 1
@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@IPOIB_MAX_MCAST_QUEUE = common dso_local global i64 0, align 8
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"no address vector, but multicast join already started\0A\00", align 1
@IB_MULTICAST_QPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_mcast_send(%struct.net_device* %0, i32* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_mcast*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ipoib_neigh*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ipoib_dev_priv* %13, %struct.ipoib_dev_priv** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %10, align 8
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 3
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @IPOIB_MCAST_FLAG_ATTACHED, align 4
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %32, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31, %26, %3
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %45)
  br label %200

47:                                               ; preds = %31
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.net_device* %48, i8* %49)
  store %struct.ipoib_mcast* %50, %struct.ipoib_mcast** %8, align 8
  %51 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %52 = icmp ne %struct.ipoib_mcast* %51, null
  br i1 %52, label %91, label %53

53:                                               ; preds = %47
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.net_device* %57, i32 0)
  store %struct.ipoib_mcast* %58, %struct.ipoib_mcast** %8, align 8
  %59 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %60 = icmp ne %struct.ipoib_mcast* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %63 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %69)
  br label %136

71:                                               ; preds = %53
  %72 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %73 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %74 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %73, i32 0, i32 2
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %77 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @memcpy(i32 %80, i8* %81, i32 4)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %85 = call i32 @__ipoib_mcast_add(%struct.net_device* %83, %struct.ipoib_mcast* %84)
  %86 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %87 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %86, i32 0, i32 4
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %89 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %88, i32 0, i32 1
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %71, %47
  %92 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %93 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %135, label %96

96:                                               ; preds = %91
  %97 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %98 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %97, i32 0, i32 3
  %99 = call i64 @skb_queue_len(i32* %98)
  %100 = load i64, i64* @IPOIB_MAX_MCAST_QUEUE, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %104 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %103, i32 0, i32 3
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @skb_queue_tail(i32* %104, %struct.sk_buff* %105)
  br label %115

107:                                              ; preds = %96
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %107, %102
  %116 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %117 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %118 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %117, i32 0, i32 2
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %123 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %122, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %134

124:                                              ; preds = %115
  %125 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %126 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %127 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %126, i32 0, i32 2
  %128 = call i64 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %132 = call i32 @ipoib_mcast_sendonly_join(%struct.ipoib_mcast* %131)
  br label %133

133:                                              ; preds = %130, %124
  br label %134

134:                                              ; preds = %133, %121
  store %struct.ipoib_mcast* null, %struct.ipoib_mcast** %8, align 8
  br label %135

135:                                              ; preds = %134, %91
  br label %136

136:                                              ; preds = %135, %61
  %137 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %138 = icmp ne %struct.ipoib_mcast* %137, null
  br i1 %138, label %139, label %199

139:                                              ; preds = %136
  %140 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %141 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = icmp ne %struct.TYPE_10__* %142, null
  br i1 %143, label %144, label %199

144:                                              ; preds = %139
  %145 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %146 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %145, i32 0, i32 0
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = call %struct.ipoib_neigh* @ipoib_neigh_get(%struct.net_device* %149, i32* %150)
  store %struct.ipoib_neigh* %151, %struct.ipoib_neigh** %11, align 8
  %152 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %153 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @spin_lock_irqsave(i32* %153, i64 %154)
  %156 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %157 = icmp ne %struct.ipoib_neigh* %156, null
  br i1 %157, label %181, label %158

158:                                              ; preds = %144
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = call %struct.ipoib_neigh* @ipoib_neigh_alloc(i32* %159, %struct.net_device* %160)
  store %struct.ipoib_neigh* %161, %struct.ipoib_neigh** %11, align 8
  %162 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %163 = icmp ne %struct.ipoib_neigh* %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %166 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %165, i32 0, i32 0
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = call i32 @kref_get(i32* %168)
  %170 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %171 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %174 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %173, i32 0, i32 1
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %174, align 8
  %175 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %176 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %175, i32 0, i32 0
  %177 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %178 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %177, i32 0, i32 1
  %179 = call i32 @list_add_tail(i32* %176, i32* %178)
  br label %180

180:                                              ; preds = %164, %158
  br label %181

181:                                              ; preds = %180, %144
  %182 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %183 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %182, i32 0, i32 0
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load %struct.net_device*, %struct.net_device** %4, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %189 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %188, i32 0, i32 0
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = load i32, i32* @IB_MULTICAST_QPN, align 4
  %192 = call i32 @ipoib_send(%struct.net_device* %186, %struct.sk_buff* %187, %struct.TYPE_10__* %190, i32 %191)
  %193 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %194 = icmp ne %struct.ipoib_neigh* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %181
  %196 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %11, align 8
  %197 = call i32 @ipoib_neigh_put(%struct.ipoib_neigh* %196)
  br label %198

198:                                              ; preds = %195, %181
  br label %205

199:                                              ; preds = %139, %136
  br label %200

200:                                              ; preds = %199, %39
  %201 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %202 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %201, i32 0, i32 0
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  br label %205

205:                                              ; preds = %200, %198
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.net_device*, i8*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__ipoib_mcast_add(%struct.net_device*, %struct.ipoib_mcast*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ipoib_mcast_sendonly_join(%struct.ipoib_mcast*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ipoib_neigh* @ipoib_neigh_get(%struct.net_device*, i32*) #1

declare dso_local %struct.ipoib_neigh* @ipoib_neigh_alloc(i32*, %struct.net_device*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @ipoib_send(%struct.net_device*, %struct.sk_buff*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ipoib_neigh_put(%struct.ipoib_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
