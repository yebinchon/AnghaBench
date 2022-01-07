; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_set_speed_duplex_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_set_speed_duplex_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32, i32, i32)* @mac_set_speed_duplex_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_set_speed_duplex_fc(%struct.cmac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cmac*, %struct.cmac** %6, align 8
  %14 = getelementptr inbounds %struct.cmac, %struct.cmac* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SPEED_10, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SPEED_100, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SPEED_1000, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %215

33:                                               ; preds = %28, %24, %20, %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @DUPLEX_FULL, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %215

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %172

44:                                               ; preds = %41
  %45 = load %struct.cmac*, %struct.cmac** %6, align 8
  %46 = getelementptr inbounds %struct.cmac, %struct.cmac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @REG_MODE_CFG(i32 %48)
  %50 = call i32 @vsc_read(i32 %47, i32 %49, i32* %10)
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 3
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, -16
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SPEED_1000, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, 8
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %44
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.cmac*, %struct.cmac** %6, align 8
  %68 = getelementptr inbounds %struct.cmac, %struct.cmac* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @REG_MODE_CFG(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @vsc_write(i32 %69, i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SPEED_1000, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  store i32 130, i32* %10, align 4
  br label %85

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SPEED_100, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 132, i32* %10, align 4
  br label %84

83:                                               ; preds = %78
  store i32 134, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %77
  %86 = load %struct.cmac*, %struct.cmac** %6, align 8
  %87 = getelementptr inbounds %struct.cmac, %struct.cmac* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @REG_DEV_SETUP(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, 1
  %93 = call i32 @vsc_write(i32 %88, i32 %90, i32 %92)
  %94 = load %struct.cmac*, %struct.cmac** %6, align 8
  %95 = getelementptr inbounds %struct.cmac, %struct.cmac* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @REG_DEV_SETUP(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @vsc_write(i32 %96, i32 %98, i32 %99)
  %101 = load %struct.cmac*, %struct.cmac** %6, align 8
  %102 = getelementptr inbounds %struct.cmac, %struct.cmac* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @REG_DBG(i32 %104)
  %106 = call i32 @vsc_read(i32 %103, i32 %105, i32* %10)
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, -65281
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @SPEED_1000, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %85
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, 1024
  store i32 %114, i32* %10, align 4
  br label %126

115:                                              ; preds = %85
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @SPEED_100, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, 8192
  store i32 %121, i32* %10, align 4
  br label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, 65280
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %112
  %127 = load %struct.cmac*, %struct.cmac** %6, align 8
  %128 = getelementptr inbounds %struct.cmac, %struct.cmac* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @REG_DBG(i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @vsc_write(i32 %129, i32 %131, i32 %132)
  %134 = load %struct.cmac*, %struct.cmac** %6, align 8
  %135 = getelementptr inbounds %struct.cmac, %struct.cmac* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @REG_TX_IFG(i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @SPEED_1000, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 5, i32 17
  %144 = call i32 @vsc_write(i32 %136, i32 %138, i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @DUPLEX_HALF, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %156

149:                                              ; preds = %126
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @SPEED_1000, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 12, i32* %11, align 4
  br label %155

154:                                              ; preds = %149
  store i32 4, i32* %11, align 4
  br label %155

155:                                              ; preds = %154, %153
  br label %156

156:                                              ; preds = %155, %148
  %157 = load i32, i32* %11, align 4
  %158 = or i32 %157, 9216
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, 384
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = or i32 %161, 16
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, 3
  store i32 %164, i32* %11, align 4
  %165 = load %struct.cmac*, %struct.cmac** %6, align 8
  %166 = getelementptr inbounds %struct.cmac, %struct.cmac* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @REG_MODE_CFG(i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @vsc_write(i32 %167, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %156, %41
  %173 = load %struct.cmac*, %struct.cmac** %6, align 8
  %174 = getelementptr inbounds %struct.cmac, %struct.cmac* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @REG_PAUSE_CFG(i32 %176)
  %178 = call i32 @vsc_read(i32 %175, i32 %177, i32* %10)
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, -983041
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, 131072
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @PAUSE_RX, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, i32* %10, align 4
  %189 = or i32 %188, 262144
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %187, %172
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @PAUSE_TX, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* %10, align 4
  %197 = or i32 %196, 524288
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @PAUSE_RX, align 4
  %201 = load i32, i32* @PAUSE_TX, align 4
  %202 = or i32 %200, %201
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, 65536
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %204, %198
  %208 = load %struct.cmac*, %struct.cmac** %6, align 8
  %209 = getelementptr inbounds %struct.cmac, %struct.cmac* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @REG_PAUSE_CFG(i32 %211)
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @vsc_write(i32 %210, i32 %212, i32 %213)
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %207, %40, %32
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @vsc_read(i32, i32, i32*) #1

declare dso_local i32 @REG_MODE_CFG(i32) #1

declare dso_local i32 @vsc_write(i32, i32, i32) #1

declare dso_local i32 @REG_DEV_SETUP(i32) #1

declare dso_local i32 @REG_DBG(i32) #1

declare dso_local i32 @REG_TX_IFG(i32) #1

declare dso_local i32 @REG_PAUSE_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
